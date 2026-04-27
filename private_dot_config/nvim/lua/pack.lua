--list of the plugins
--native packages
vim.cmd.packadd("nvim.undotree")
--require('vim._core.ui2').enable({})



vim.pack.add({
   --lsp plugins
    --treesitter
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter.git' },
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter-context' },

    { src = 'https://github.com/williamboman/mason.nvim.git' },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
    
})

    --looks and feel
--    { src = 'https://github.com/nvim-lualine/lualine.nvim' }, --config prob
    --fast search 
--    {src = 'https://github.com/dmtrKovalenko/fff.nvim'},
------need to config
--    { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
    
--    { src = 'https://github.com/nvim-mini/mini.pick' },
    --for smooth scrolling 
--    { src = 'https://github.com/karb94/neoscroll.nvim' },
------git 
--    { src = "https://github.com/ThePrimeagen/git-worktree.nvim" }, --enabled
--    { src = "https://github.com/lewis6991/gitsigns.nvim" }, --enabled
--    { src = "https://github.com/tpope/vim-fugitive" }, --enabled
--    { src = "https://github.com/kdheepak/lazygit.nvim" }, --enabled
--    { src = 'https://github.com/sindrets/diffview.nvim' }

