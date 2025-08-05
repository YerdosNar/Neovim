local lsps = { "lua_ls", "clangd", "bashls", "jdtls" }

return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = lsps
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            for _, lsp in ipairs(lsps) do
                lspconfig[lsp].setup({
                    capabilities = capabilities
                })
            end
        end
    }
}
