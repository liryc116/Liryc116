vim.opt.background = "dark"
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true

require("tokyonight").setup({
    transparent = true,
})

vim.cmd[[colorscheme tokyonight]]
