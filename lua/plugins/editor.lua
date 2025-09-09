return {
    -- Syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "lua", "python", "c", "cpp", "java", "html", "css", "javascript" },
                highlight = { enable = true },
                autotag = { enable = true },
                indent = { enable = true },
            })
        end,
    },

    -- Commenting
    {
        "numToStr/Comment.nvim",
        opts = {},
    },

    -- Autoclosing tags & pairs
    { "windwp/nvim-ts-autotag", dependencies = { "nvim-treesitter/nvim-treesitter" } },
    { "jiangmiao/auto-pairs" },

    -- Integrated terminal
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup({
                open_mapping = [[<c-\>]],
                -- On terminal open, automatically enter insert mode
                on_open = function(term)
                    vim.cmd("startinsert!")
                end,
            })
        end,
    },

    -- Code folding
    {
        "kevinhwang91/nvim-ufo",
        dependencies = "kevinhwang91/promise-async",
        config = function()
            vim.o.foldcolumn = "1"
            vim.o.foldlevel = 99
            vim.o.foldlevelstart = 99
            vim.o.foldenable = true
            vim.o.foldmethod = "expr"
            vim.o.foldexpr = "nvim_treesitter#foldexpr()"

            require("ufo").setup({
                provider_selector = function(bufnr, filetype, buftype)
                    return { "treesitter", "indent" }
                end,
            })
        end,
    },
}
