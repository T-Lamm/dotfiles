local capabilities = require('cmp_nvim_lsp').default_capabilities()

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
    start_delay = 1000,
    debounce_hours = 10,
    ['mason-lspconfig'] = true,
}


vim.lsp.config('*', {
    capabilities = capabilities
})

vim.lsp.enable({
    --bash
    "bashls",
    --lua
    "lua_ls",
    --Python might need additional setup
    --"ruff",
    "basedpyright",
    --c / c++
    "clangd",
    --latex
    "texlab",
    --rust
    "rust-analyzer",
    --vhdl
    --"vhdl"
})


