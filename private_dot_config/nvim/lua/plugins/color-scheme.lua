require("tokyonight").setup({
  -- use the night style
    style = "storm",
    transparent = true,
    styles = {
        sidebars = "transparent",
        floats = "transparent",
    },
    dim_inactive = true,
})

vim.cmd("colorscheme tokyonight")

