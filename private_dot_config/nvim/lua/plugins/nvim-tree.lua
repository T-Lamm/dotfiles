vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- pass to setup along with your other config
require("nvim-tree").setup({
    view = {
        width = 30,
        side = "left",
    },
    filters = {
        dotfiles = false,
    },
    on_attach = my_on_attach,
    ---
})

--nvim-tree
vim.keymap.set("n", "<leader>zz", "<cmd>NvimTreeToggle<cr>", opt)
vim.keymap.set("n", "<leader>zf", "<cmd>NvimTreeFindFile<cr>", opt)
--change working dir to current dir
vim.keymap.set("n", "<leader>cd", '<cmd>lua vim.fn.chdir(vim.fn.expand("%:p:h"))<cr>')

