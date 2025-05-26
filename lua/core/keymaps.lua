local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- File explorer
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Find files
map("n", "<leader>f", ":Telescope find_files<CR>", opts)

-- Comment toggle
map("n", "<leader>c", ":CommentToggle<CR>", opts)

-- Select all
map("n", "<C-a>", "ggVG", opts)

-- Copy to system clipboard
map("v", "<C-s>", '"+y', opts)

-- Spell check
map("n", "<C-s>", ":set spell<CR>", opts)

-- Opening the terminal
map("n", "<leader>t", ":ToggleTerm<CR>", opts)
