require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "python", "c", "cpp", "java", "html", "css", "javascript" },
    highlight = { enable = true },
    autotag = { enable = true }
})

