--define the behavior of plugins
-- Note: Treesitter uses the .configs sub-module
require('nvim-treesitter').setup {
    ensure_installed = { "lua", "vim", "vimdoc", "python", "bash", "c", "cpp", "latex", "rust" },
    highlight = {
        enable = true, 
    },
}

require('nvim-treesitter').install { "lua", "vim", "vimdoc", "python", "bash", "c", "cpp", "latex", "rust" }


require("mason").setup({})

require("neoscroll").setup({ duration_multiplier = 0.3 })

require("diffview").setup({ use_icons = false })

--require("mini.pick").setup()

--require("mini.files").setup()
