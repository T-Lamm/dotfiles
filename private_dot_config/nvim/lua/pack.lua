--list of the plugins
--native packages
vim.cmd.packadd("nvim.undotree")

if not is_android then
    vim.pack.add({
        --lsp plugins
        --mason/lsp
        { src = "https://github.com/williamboman/mason.nvim" },
        { src = "https://github.com/neovim/nvim-lspconfig" },
        { src = "https://github.com/williamboman/mason-lspconfig.nvim" },
        { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
    })
end

vim.pack.add({
    --option lazydev
    { src = "https://github.com/folke/lazydev.nvim" },
    --treesitter
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter-context" },
    --mini.nvim
    --{ src = 'https://github.com/nvim-mini/mini.nvim'},      --require setup
    --general behavior
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/nvim-tree/nvim-tree.lua" },
    --auto completion
    { src = "https://github.com/hrsh7th/nvim-cmp" },
    -- completions dependency
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help" },
    { src = "https://github.com/hrsh7th/cmp-buffer" },
    { src = "https://github.com/hrsh7th/cmp-path" },
    { src = "https://github.com/hrsh7th/cmp-cmdline" },
    { src = "https://github.com/saadparwaiz1/cmp_luasnip" },
    { src = "https://github.com/kdheepak/cmp-latex-symbols" },
    { src = "https://github.com/lukas-reineke/cmp-under-comparator" },
    { src = "https://github.com/L3MON4D3/LuaSnip" },
    { src = "https://github.com/rafamadriz/friendly-snippets" },
    --{ src = 'https://github.com/honza/vim-snippets.git'},
    --autopairing
    { src = "https://github.com/windwp/nvim-autopairs" },
    --markdowns and LaTeX
    { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
    --{ src = 'https://github.com/OXY2DEV/markview.nvim.git'},
    --{ src = 'https://github.com/lervag/vimtex'},
    --git
    --{ src = 'https://github.com/tpope/vim-fugitive' },
    --{ src = 'https://github.com/lewis6991/gitsigns.nvim.git'},
    { src = "https://github.com/sindrets/diffview.nvim" },
    { src = "https://github.com/NeogitOrg/neogit" },
    --styling
    { src = "https://github.com/folke/tokyonight.nvim" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
    { src = "https://github.com/akinsho/bufferline.nvim" },
    --diagnostics
    { src = "https://github.com/folke/trouble.nvim" },
    { src = "https://github.com/folke/todo-comments.nvim" },
    { src = "https://github.com/hedyhli/outline.nvim" },
    { src = "https://github.com/rmagatti/auto-session" },
    --fast search
    { src = "https://github.com/dmtrKovalenko/fff.nvim" },
    --fzf
    { src = "https://github.com/ibhagwan/fzf-lua" },
    -----------------------------------------------------------
    --interesting plugins might use in the future
    --{ src = 'https://github.com/rmagatti/auto-session.git'}, -- name is the content
    --{ src = 'https://github.com/kylechui/nvim-surround.git'}, -- manipulate around the object
    --
    -----------------------------------------------------------
    --whichkey
    { src = "https://github.com/folke/which-key.nvim" },
})
--plugins with small setup
if not is_android then
    require("plugins.mason")
end

require("plugins")
require("plugins.color-scheme")
--plugins with their own setup file
require("plugins.nvim-tree")
require("plugins.nvim-cmp")
require("plugins.statusline")
require("plugins.ibl")
require("plugins.whichkey")
require("plugins.nvim-treesitter")
require("plugins.auto-session")
require("plugins.fzf")
require("plugins.fff")
require("plugins.git")
require("plugins.bufferline")
--config 404
require("plugins.outline")
require("plugins.trouble")
require("plugins.todo")
