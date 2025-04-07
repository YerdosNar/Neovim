local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
        vim.cmd([[packadd packer.nvim]])
    end
end

ensure_packer()

return require("packer").startup(function(use)
    -- Plugin manager
    use "wbthomason/packer.nvim"

    -- UI Plugins
    use "folke/tokyonight.nvim"
    use "morhetz/gruvbox"
    use "nvim-tree/nvim-tree.lua"
    use "nvim-lualine/lualine.nvim"
    use "nvim-tree/nvim-web-devicons"

    -- LSP & Completion
    use "neovim/nvim-lspconfig"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "L3MON4D3/LuaSnip"

    -- Fuzzy Finder
    use {
        "nvim-telescope/telescope.nvim",
        requires = { "nvim-lua/plenary.nvim" }
    }

    -- Syntax Highlighting
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

    -- LaTeX
    use {
        "lervag/vimtex",
        ft = { "tex" },
    }

    -- Miscellaneous
    use "jiangmiao/auto-pairs"
    use "windwp/nvim-ts-autotag"
    use "tpope/vim-fugitive"
    use "terrortylor/nvim-comment"

    if packer_bootstrap then
        require("packer").sync()
    end
end)

