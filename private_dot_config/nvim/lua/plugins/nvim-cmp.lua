local cmp = require('cmp')
local luasnip = require('luasnip')
local autopairs = require('nvim-autopairs')

-- 1. Setup Autopairs
autopairs.setup({})

-- 2. Integration: Make autopairs and cmp work together
-- (This makes brackets auto-complete when you select a function)
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

-- 3. nvim-cmp Setup
cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body) -- Tell cmp to use LuaSnip
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(), -- Manually trigger completion
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Enter to confirm
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' }, -- LSP suggestions
        { name = 'luasnip' },  -- Snippets
    }, {
        { name = 'buffer' },   -- Text within current file
        { name = 'path' },     -- File system paths
    })
})

-- 4. Setup Cmdline completion (for / and :)
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = { { name = 'buffer' } }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

