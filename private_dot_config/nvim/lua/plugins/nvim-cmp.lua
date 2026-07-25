local cmp = require("cmp")
local luasnip = require("luasnip")
local autopairs = require("nvim-autopairs")

-- 1. Setup Autopairs
autopairs.setup({})

-- 2. Integration: Make autopairs and cmp work together
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

local cond = require("nvim-autopairs.conds")
-- Find the rule for double quotes and tell it to ignore 'tex' and 'latex' filetypes
local double_quote_rule = autopairs.get_rule('"')[1]

if double_quote_rule then
    double_quote_rule:with_pair(cond.not_filetypes({ "tex", "latex" }))
end

local Rule = require("nvim-autopairs.rule")
autopairs.add_rules({
    Rule("$", "$", "tex"),
})

require("luasnip.loaders.from_vscode").lazy_load()

-- 3. nvim-cmp Setup
cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    window = {
        completion = cmp.config.window.bordered({
            max_height = 7,
        }),
        documentation = cmp.config.window.bordered({
            max_height = 7,
        }),
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),      -- Manually trigger completion
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Enter to confirm
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- LSP suggestions
        { name = "luasnip" }, -- Snippets
        { name = "nvim_lsp_signature_help" },
        { name = "latex_symbols" },
    }, {
        { name = "buffer" }, -- Text within current file
        { name = "path" }, -- File system paths
    }),
    sorting = {
        comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.score,
            require("cmp-under-comparator").under,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
        },
    },
})

-- 4. Setup Cmdline completion (for / and :)
cmp.setup.cmdline("/", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = { { name = "buffer" } },
})

cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = "path" },
    }, {
        { name = "cmdline" },
    }),
})
