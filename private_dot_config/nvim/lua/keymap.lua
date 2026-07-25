local opt = { noremap = true, silent = true }
vim.g.maplocalleader = ";" --generell natigation
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-d>", "<C-d>zz") ----scrolldown and center cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz") ----scrolldown and center cursor
vim.keymap.set("n", "<leader>t", "<cmd>tabnew<cr>", opt)
vim.keymap.set("n", "<leader>-", "<cmd>vsplit<cr>", opt)
vim.keymap.set("n", "<leader>_", "<cmd>split<cr>", opt)

--copy paste with system clipboard
vim.keymap.set("v", "<leader>cc", '"+y')
vim.keymap.set("n", "<leader>cc", '"+Y')
vim.keymap.set("n", "<leader>vv", '"+p')
vim.keymap.set("n", "<leader>VV", '"+P')
vim.keymap.set("v", "p", [[_dp]], opts, { desc = "Past over selsection without losing yanked text" })

--toggle line Wrap
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", { desc = "Toggle Wrap", silent = true })

--Terminal spezific
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
--lang toggle
vim.keymap.set("n", "<leader>ls", "<cmd>set spell false <cr>")
--indent
vim.keymap.set("v", ">", ">gv", { desc = "indent and keep selection" })
vim.keymap.set("v", "<", "<gv", { desc = "Unindent and keep selection" })
-- buffers
vim.keymap.set("n", "<leader>b", "", { desc = "buffers" })
vim.keymap.set("n", "<leader>bn", ":bn<cr>", { desc = "next buffer" })
vim.keymap.set("n", "<leader>bp", ":bp<cr>", { desc = "previous buffer" })
vim.keymap.set("n", "<leader>bb", ":bd<cr>", { desc = "close buffer" })
vim.keymap.set("n", "<leader>ba", ":%bd<cr>", { desc = "close all buffers" })
vim.keymap.set("n", "<leader>bo", ":%bd|e#<cr>", { desc = "close other buffers" })
--plugin keybinds
vim.keymap.set("n", "<leader>u", function()
    vim.cmd.packadd("nvim.undotree")
    require("undotree").open()
end, { desc = "Toggle undotree" })
