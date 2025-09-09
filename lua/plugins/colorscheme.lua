return {

    {

        "morhetz/gruvbox",

        priority = 1000, -- Make sure it loads first

        config = function()

            -- Load the colorscheme here

            vim.cmd.colorscheme("gruvbox")

        end,

    },

    { "folke/tokyonight.nvim" },

}
