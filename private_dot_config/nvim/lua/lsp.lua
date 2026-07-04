local capabilities = require('cmp_nvim_lsp').default_capabilities()

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
    "rust-analyzer"
})


