-- Centralized keybindings

local keymap = vim.keymap.set

--[[ General Keymaps ]]

-- Set 'silent' for all general mappings
local opts = { noremap = true, silent = true }

-- Movement
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)
keymap("i", "<C-j>", "<Esc>o", opts)

keymap("i", "<C-k>", "<Esc>O", opts)

keymap("i", "<C-S-j>", "<Esc>j", opts)

keymap("i", "<C-S-k>", "<Esc>k", opts)

-- Select all
keymap("n", "<C-a>", "ggVG", opts)

-- Copy to system clipboard in visual mode
-- Note: Changed from <C-s> to <C-c> to avoid conflict with spell check toggle
keymap("v", "<C-c>", '"+y', opts)

-- Enable spell check
keymap("n", "<C-s>", ":set spell!<CR>", opts)


--[[ Plugin Keymaps ]]

-- nvim-tree (File Explorer)
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer", silent = true })

-- fold
keymap("n", "<leader>z", "za", { desc = "Toggle Fold", silent = true })
keymap("n", "<leader>Z", "zA", { desc = "Toggle Recursively", silent = true })
keymap("n", "zR", "zR", { desc = "Open All Folds", silent = true })
keymap("n", "zM", "zM", { desc = "Close All Folds", silent = true })

keymap("n", "<leader>fi", ":set foldmethod=indent<CR>", { desc = "Folding in indentation", silent = true })
keymap("n", "<leader>fb", ":set foldmethod=expr<CR>", { desc = "Folding in blocks(TreeSitter)", silent = true })

-- telescope (Fuzzy Finder)
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find Files", silent = true })

-- telescope (Fuzzy Finder)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep", silent = true })

-- aerial (Code Outline)
keymap("n", "<leader>af", ":AerialToggle float<CR>", { desc = "Toggle Aerial (Code Outline)", silent = true })

-- Comment.nvim (Commenting)
-- The empty second argument means it will call the default CommentToggle command
keymap({"n", "v"}, "<leader>c", "gcc", { desc = "Toggle Comment", noremap = false })


-- toggleterm (Terminal)
keymap("n", "<leader>t", ":w<CR>:ToggleTerm<CR>", { desc = "Toggle Terminal", silent = true })

-- Markdown
keymap("n", "<leader>mk", ":w<CR> :set spell<CR> :MarkdownPreview<CR>", { desc = "Markdown type previewer", silent = true })


--[[ LSP Keymaps ]]

-- This function gets called when an LSP server attaches to a buffer
local M = {}
M.on_attach = function(client, bufnr)
    local lsp_opts = { buffer = bufnr, noremap = true, silent = true }

    -- See hover information
    keymap("n", "K", vim.lsp.buf.hover, lsp_opts)

    -- Go to definition
    keymap("n", "gd", vim.lsp.buf.definition, lsp_opts)

    -- Show code actions
    keymap("n", "<leader>ca", vim.lsp.buf.code_action, lsp_opts)

    -- Go to references
    keymap('n', 'gr', vim.lsp.buf.references, lsp_opts)

    -- Rename symbol
    keymap('n', '<leader>rn', vim.lsp.buf.rename, lsp_opts)
end

return M
