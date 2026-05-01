vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- pass to setup along with your other config
require("nvim-tree").setup({
    view = {
        width = 25,
        side = "left",
    },
    filters = {
        dotfiles = false,
    },
    on_attach = my_on_attach,
    ---
    })

