--leader
vim.g.mapleader = " "

-- file explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer"})

-- function view
vim.keymap.set("n", "<leader>a", ":AerialToggle<CR>", { desc = "Toggle aerial sidebar"})
vim.keymap.set("n", "<leader>af", ":AerialToggle float<CR>", { desc = "Toggle aerial float"})

-- Telescope
vim.keymap.set("n", "<leader>f", function() require("telescope.builtin").find_files() end, { desc = "Find Files"})
vim.keymap.set("n", "<leader>fg", function() require("telescope.builtin").live_grep() end, { desc = "Live GREP"})

-- Terminal
vim.keymap.set("n", "<leader>t", ":w<CR>:ToggleTerm<CR>")

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover information"})
vim.keymap.set("n", "gD", vim.lsp.buf.definition, { desc = "Go to definition"})
vim.keymap.set({"n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action"})

-- General editing
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all"})
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to system clipboard"})
vim.keymap.set("i", "<C-[>", "<Esc>", { desc = "Exit insert mode"})
vim.keymap.set("i", "<C-j>", "<Esc>o", { desc = "New line below and insert mode" })
vim.keymap.set("i", "<C-k>", "<Esc>O", { desc = "New line above and insert mode" })

-- Folding
vim.keymap.set("n", "zc", "zc", { desc = "Close fold"})
vim.keymap.set("n", "zo", "zo", { desc = "Open fold"})
vim.keymap.set("n", "za", "za", { desc = "Toggle fold"})
vim.keymap.set("n", "zM", "zM", { desc = "Close all folds"})
vim.keymap.set("n", "zR", "zR", { desc = "Open all folds"})
