--local veriables


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

require('render-markdown').setup({})


