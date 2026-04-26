---prob migrate to config.lua later
---package atm at /home/turtle/.local/share/nvim/
--
vim.opt.clipboard = "unnamed,unnamedplus"


require('vim._core.ui2').enable({})
require('pack')
require('plugins')
require('config')
require('keymap')
require('lsp')
--require('autocmd')
--require('statusline.lua')

