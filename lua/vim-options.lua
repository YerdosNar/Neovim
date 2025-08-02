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
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>a", ":AerialToggle<CR>")
vim.keymap.set("n", "<leader>af", ":AerialToggle float<CR>")
vim.keymap.set("n", "<C-a>", "ggVG")
vim.keymap.set("v", "<C-c>", "\"+y")
vim.keymap.set("i", "<C-[", "<Esc>")
vim.keymap.set("i", "<C-j>", "<Esc>o")
vim.keymap.set("i", "<C-k>", "<Esc>O")
