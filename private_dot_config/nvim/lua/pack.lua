--list of the plugins
--native packages
vim.cmd.packadd("nvim.undotree")
--require('vim._core.ui2').enable({})

vim.pack.add({
    --lsp plugins
    --treesitter
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter.git' },
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter-context' },
    --mason/lsp
    { src = 'https://github.com/williamboman/mason.nvim.git' },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
    --mini.nvim
--    { src = 'https://github.com/nvim-mini/mini.nvim'},      --require setup 
    --general behavior
    { src = 'https://github.com/nvim-tree/nvim-web-devicons'},
    { src = 'https://github.com/nvim-tree/nvim-tree.lua' }, 
    --auto completion 
    { src = "https://github.com/hrsh7th/nvim-cmp" },
    -- completions dependency
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
    { src = "https://github.com/hrsh7th/cmp-buffer" },
    { src = "https://github.com/hrsh7th/cmp-path" },
    { src = "https://github.com/hrsh7th/cmp-cmdline" },
    { src = 'https://github.com/L3MON4D3/LuaSnip'},
    --autopairing
    { src = 'https://github.com/windwp/nvim-autopairs'}, 
    --markdowns
    { src = 'https://github.com/MeanderingProgrammer/render-markdown.nvim'},
})
    --interesting plugins
    --{ src = 'https://github.com/karb94/neoscroll.nvim' } for smoothscrolling
    --{ src = "https://github.com/folke/which-key.nvim"}

    --looks and feel
--    { src = 'https://github.com/nvim-lualine/lualine.nvim' }, --config prob
    --fast search 
--    {src = 'https://github.com/dmtrKovalenko/fff.nvim'},
------need to config
--    { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
    
--    { src = 'https://github.com/nvim-mini/mini.pick' },
------git 
--    { src = "https://github.com/ThePrimeagen/git-worktree.nvim" }, --enabled
--    { src = "https://github.com/lewis6991/gitsigns.nvim" }, --enabled
--    { src = "https://github.com/tpope/vim-fugitive" }, --enabled
--    { src = "https://github.com/kdheepak/lazygit.nvim" }, --enabled
--    { src = 'https://github.com/sindrets/diffview.nvim' }
--plugins with small setup
require('plugins')
--plugins with their own setup file
require("plugins.nvim-treesitter")
require("plugins.nvim-web-devicons")
require("plugins.nvim-tree")
require("plugins.nvim-cmp")
