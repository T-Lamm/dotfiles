require('auto-session').setup({
	auto_restore = false,
	cwd_change_handling = true
})

vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
--vim.keymap.set()
