-- general nvim .opt.fig
vim.opt.number = true	
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 10
vim.opt.linebreak = true
--search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
--Indentation
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftround = true
vim.opt.cindent = true
vim.opt.smartindent = true

vim.opt.termguicolors = true
--encoding
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.splitbelow = true
vim.opt.splitright = true

--visual
vim.opt.signcolumn = 'yes'
vim.opt.showmatch = true
vim.opt.showbreak = '↳ '

vim.opt.list = true
vim.opt.mouse = 'nvi'
vim.opt.spelllang = { 'en_us', 'de' }
vim.opt.spell = true

vim.opt.virtualedit = "onemore"
vim.opt.termguicolors = true
vim.opt.swapfile = false

vim.opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
vim.opt.winminwidth = 5

-- folding
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldmethod = "expr"
vim.opt.foldcolumn = "0"
--vim.opt.foldcolumn = "auto:9"
vim.opt.foldtext = ""
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
--vim.opt.foldexpr = "v:lua.vim.lsp.foldexpr()"
vim.opt.fillchars:append({fold = " "})

vim.opt.cursorline = true

-- backuphandeling
vim.opt.backup = false -- Don't create backup files
vim.opt.writebackup = false -- Don't create backup before writing
vim.opt.swapfile = false -- Don't create swap files
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.vim/undo")
-----vim.opt.completeopt = { "menuone", "popup", "noinsert" } -- options for completion menu
--

-- Netrw Settings
--vim.g.netrw_liststyle = 3
--vim.g.netrw_winsize = 15


