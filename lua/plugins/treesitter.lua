return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "python", "c", "cpp", "java", "css", "javascript" },
            highlight = { enable = true },
            autotag = { enable = true }
        })
    end
}
