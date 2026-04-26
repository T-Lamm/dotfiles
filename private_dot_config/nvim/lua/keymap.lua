local s = { silent = true }
--generell natigation
vim.keymap.set("n", "<C-d>", "<C-d>zz" )     ----scrolldown and center cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz" )     ----scrolldown and center cursor
vim.keymap.set("n", "<leader>t", "<cmd>tabnew<cr>", s)
vim.keymap.set("n", "<leader>-", "<cmd>vsplit<cr>", s)
vim.keymap.set("n", "<leader>_", "<cmd>split<cr>", s)


--Terminal spezifik
--vim.keymap.set("n", 
vim.keymap.set("t", "<Esc>", [[<Cp-\><C-n>]], s)

--change working dir to current dir
vim.keymap.set("n", "<leader>cd", '<cmd>lua vim.fn.chdir(vim.fn.expand("%:p:h"))<cr>')

--lang toggle
vim.keymap.set("n", "<leader>", "<cmd>set spell false <cr>" )


--Netrw
--
vim.keymap.set("n", "<leader>zz", "<cmd>:Lexplore %:p:h<cr>")
-- buffers
--vim.keymap.set("n", "<leader>b",  "", { desc = "buffers" })
--vim.keymap.set("n", "<leader>bn", ":bn<cr>", { desc = "next buffer" })
--vim.keymap.set("n", "<leader>bp", ":bp<cr>", { desc = "previous buffer" })
--vim.keymap.set("n", "<leader>bq", ":bd<cr>", { desc = "close buffer" })
--vim.keymap.set("n", "<leader>ba", ":%bd<cr>", { desc = "close all buffers" })
--vim.keymap.set("n", "<leader>bo", ":%bd|e#<cr>", { desc = "close other buffers" })
