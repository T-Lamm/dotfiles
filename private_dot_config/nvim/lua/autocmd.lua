vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking",
    callback = function ()
        vim.hl.on_yank()
    end,
})
