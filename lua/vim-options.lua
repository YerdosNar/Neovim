vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set autoindent")
vim.cmd("set cursorline")
vim.cmd("set clipboard+=unnamedplus")

vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim-treesitter#foldexpr()"
vim.o.foldlevel = 99

vim.g.mapleader = " "
vim.keymap.set("n", "<C-a>", "ggVG")
vim.keymap.set("v", "<C-c>", "\"+y")
vim.keymap.set("i", "<C-[", "<Esc>")
