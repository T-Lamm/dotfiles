if not is_android then

    -- treesitter languages
    local tslang = { "lua", "vim", "vimdoc", "python", "bash", "c", "cpp", "latex", "rust", "markdown", "markdown_inline", "html", "yaml", "vhdl"}
    require("nvim-treesitter").install(tslang)
    --define the behavior of plugins
    require('nvim-treesitter').setup {
        ensure_installed =  tslang,
        highlight = {
            enable = true,
        },
    }
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function(args)
        local buf = args.buf
        local ft = vim.bo[buf].filetype
        local lang = vim.treesitter.language.get_lang(ft)

        if not lang then
            return
        end

        -- load parser safely
        local ok_add = pcall(vim.treesitter.language.add, lang)
        if not ok_add then
            return
        end

        -- start treesitter safely
        pcall(vim.treesitter.start, buf, lang)

        -- enable indentation only for real languages
        if ft ~= "yaml" and ft ~= "markdown" then
            vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            vim.bo[buf].smartindent = false
            vim.bo[buf].cindent = false
        end
    end,
})
