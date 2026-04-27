--local veriables
local tslang = { "lua", "vim", "vimdoc", "python", "bash", "c", "cpp", "latex", "rust", "markdown" }


--define the behavior of plugins
require('nvim-treesitter').setup {
    ensure_installed = { tslang },
    highlight = {
        enable = true, 
    }
}

require('nvim-treesitter').install { tslang }
require'treesitter-context'.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  multiwindow = false, -- Enable multiwindow support.
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 15, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}
require('mason').setup({})
require('mason-lspconfig').setup()
require('mason-tool-installer').setup {
    ensure_installed = {
        "lua-language-server",
        "vim-language-server",
        --"vimdoc",
        --"python", 
        "bash-language-server", 
        "clangd", 
        "texlab", 
        "rust-analyzer",
        "stylua",
        "basedpyright",
        "marksman"
    },
    auto_update = false,
    run_on_start = true,
    start_delay = 10000,
    debounce_hours = 10,
    ['mason-lspconfig'] = true,
}

--require('neoscroll').setup({ duration_multiplier = 0.3 })

--require('diffview').setup({ use_icons = false })

--require("mini.pick").setup()

--require("mini.files").setup()
