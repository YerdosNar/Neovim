-- Set leader key
vim.g.mapleader = " "

-- Load core settings
require("core.options")
require("core.keymaps")
require("core.autocommands")

-- Load plugins
require("plugins")

-- LSP & Completion
require("plugins.lsp")
require("plugins.cmp")

-- UI Plugins
require("plugins.lualine")
require("plugins.nvim-tree")
require("plugins.telescope")
require("plugins.treesitter")

-- Colorscheme
