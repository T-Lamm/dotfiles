local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("*", {
    capabilities = capabilities,
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
    "rust_analyzer",
    --vhdl
    --"vhdl"
    --markdown
    "marksman",
})

--auto format
vim.keymap.set("n", "<leader>ff", function()
    vim.lsp.buf.format({ async = true })
end, { desc = "Format current buffer" })
