vim.api.nvim_create_user_command('Pdf', function(opt)
    vim.cmd('silent !evince ' .. opt.args .. ' &')
end, { nargs = 1, complete ='file'})
