require('bufferline').setup({
    options = { 
    mode = "buffers",
    themable = true,
    seperator_style = "padded_slant",
    style_preset = 'no_italic',
    diagnostics = "nvim_lsp",
    show_buffer_icons = true,
    show_close_icon = false,
    show_buffer_close_icons = true,
    sort_by = 'id',
    numbers = "buffer_id",
    indicator = { '|',
        style = 'underline'},
    hover = {
            enabled = true,
            delay = 100,
            reveal = {'close'}
        },
    offsets = {
        {
            filetype = "NvimTree",
            text = "Tree",
            text_align = "left",
            separator = true,
            },
        },
    },
})
