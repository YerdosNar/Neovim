return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = { options = { theme = "gruvbox" } },
    },
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup({
                git = { enable = true, show_on_dirs = true, show_on_open_dirs = true },
            })
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = {
                -- Use a character for the line
                char = "│",
                -- And highlight that character with a cycling color
            },
            scope = {
                enabled = true,
                highlight = "Statement",
                show_start = true,
                show_end = true
            }, -- Keep scope disabled for this option
        },
    },
}
