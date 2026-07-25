--prob migrate to config.lua later
---package atm at /home/turtle/.local/share/nvim/
require('vim._core.ui2').enable({})

local is_android = vim.fn.has('android') == 1

require('pack')
require('config')
require('lsp')
require('keymap')
require('autocmd')
require('command')
require('filetype')
