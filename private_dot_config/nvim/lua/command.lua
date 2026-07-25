--open Pdf
vim.api.nvim_create_user_command("Pdf", function(opt)
    vim.cmd("silent !evince " .. vim.fn.shellescape(opt.args) .. " &")
end, { nargs = 1, complete = "file" })

vim.api.nvim_create_user_command("PackDel", function(opts)
    -- Check if any arguments were passed (ignoring empty spaces)
    if opts.args:match("%S") then
        -- Split the arguments into a list and delete them
        local plugins = vim.split(opts.args, "%s+", { trimempty = true })
        vim.pack.delete(plugins)
    end
    -- If no arguments are passed, the if-block is skipped and nothing happens
end, { nargs = "*", desc = "Delete plugins :PackDel plugin1 plugin2" })

vim.api.nvim_create_user_command("PackUpdate", function(opts)
    -- check if any argument passed
    if opts.args:match("%S") then
        --only updates this plugin
        local plugins = vim.split(opts.args, "%s+", { trimempty = true })
        vim.pack.update(plugins)
    else
        --update all plugins
        vim.pack.update()
    end
end, { nargs = "*", desc = "Update all plugins or specific ones" })
