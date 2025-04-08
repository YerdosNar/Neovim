-- General Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = true
vim.cmd("colorscheme gruvbox")
vim.g.vimtex_view_method = 'zathura'
vim.api.nvim_set_hl(0, "Normal", { bg =  "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg =  "none" })

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Enable mouse
vim.opt.mouse = "a"

