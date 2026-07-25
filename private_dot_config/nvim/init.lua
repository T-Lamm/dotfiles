--prob migrate to config.lua later
---package atm at /home/turtle/.local/share/nvim/
require('vim._core.ui2').enable({})

local is_android = vim.env.TERMUX_VERSION ~= nil

require('pack')
require('config')
require('lsp')
require('keymap')
require('autocmd')
require('command')
require('filetype')
