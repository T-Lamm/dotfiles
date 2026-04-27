local opt = { noremap = true, silent = true }
--generell natigation
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-d>", "<C-d>zz" )     ----scrolldown and center cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz" )     ----scrolldown and center cursor
vim.keymap.set("n", "<leader>t", "<cmd>tabnew<cr>", opt)
vim.keymap.set("n", "<leader>-", "<cmd>vsplit<cr>", opt)
vim.keymap.set("n", "<leader>_", "<cmd>split<cr>", opt)

vim.keymap.set("n", "<C-w>", "<cmd>wincmd k<cr>")
vim.keymap.set("n", "<C-a>", "<cmd>wincmd h<cr>")
vim.keymap.set("n", "<C-s>", "<cmd>wincmd j<cr>")
vim.keymap.set("n", "<C-d>", "<cmd>wincmd l<cr>")
vim.keymap.set("n", "<C-S-Up>", "<cmd>resize +5<CR>", opts)
vim.keymap.set("n", "<C-S-Down>", "<cmd>resize -5<CR>", opts)
vim.keymap.set("n", "<C-S-Left>", "<cmd>vertical resize +5<CR>", opts)
vim.keymap.set("n", "<C-S-Right>", "<cmd>vertical resize -5<CR>", opts)
vim.keymap.set("n", "<leader>we", "<C-W>c" )


--copy paste with system clipboard
vim.keymap.set("v", "<leader>cc", '"+y' )
vim.keymap.set("n", "<leader>cc", '"+Y' )
vim.keymap.set("n", "<leader>vv", '"+p' )
vim.keymap.set("n", "<leader>VV", '"+P' )
vim.keymap.set("v", "p", '"_dp', opts)


vim.keymap.set("i", "`", "``<left>")
vim.keymap.set("i", '"', '""<left>')
vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "{", "{}<left>")
vim.keymap.set("i", "<", "<><left>")
--toggle line Wrap
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", { desc = "Toggle Wrap", silent = true })

--Terminal spezifik
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
--change working dir to current dir
vim.keymap.set("n", "<leader>cd", '<cmd>lua vim.fn.chdir(vim.fn.expand("%:p:h"))<cr>')
--lang toggle
vim.keymap.set("n", "<leader>ls", "<cmd>set spell false <cr>" )


--Netrw
--
vim.keymap.set("n", "<leader>zz", "<cmd>:Lexplore %:p:h<cr>")
-- buffers
vim.keymap.set("n", "<leader>b",  "", { desc = "buffers" })
vim.keymap.set("n", "<leader>bn", ":bn<cr>", { desc = "next buffer" })
vim.keymap.set("n", "<leader>bp", ":bp<cr>", { desc = "previous buffer" })
vim.keymap.set("n", "<leader>bq", ":bd<cr>", { desc = "close buffer" })
vim.keymap.set("n", "<leader>ba", ":%bd<cr>", { desc = "close all buffers" })
vim.keymap.set("n", "<leader>bo", ":%bd|e#<cr>", { desc = "close other buffers" })
--
--plugin keybinds
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle Undo Tree" })
