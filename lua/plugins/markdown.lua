return {
    -- In-editor markdown rendering (replaces broken iamcco plugin)
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },
        ft = { "markdown" },
        opts = {
            heading = { enabled = true },
            code = { enabled = true, style = "full" },
            bullet = { enabled = true },
            checkbox = { enabled = true },
            table = { enabled = true },
        },
    },

    -- Make sure markdown + markdown_inline parsers are installed
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            opts.ensure_installed = opts.ensure_installed or {}
            vim.list_extend(opts.ensure_installed, { "markdown", "markdown_inline" })
        end,
    },
}
