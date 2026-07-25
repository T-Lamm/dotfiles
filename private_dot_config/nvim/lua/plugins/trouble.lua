require("trouble").setup({
    focus = true,
})

vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Workspace Diagnostics" })
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble<cr>", { desc = "open Trouble" })
