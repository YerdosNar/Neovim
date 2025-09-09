return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "jdtls", "lua_ls", "pyright" },
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local keymaps = require("config.keymaps") -- Import the keymaps module

      local servers = { "jdtls", "lua_ls", "pyright" }

      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          on_attach = keymaps.on_attach, -- Use the on_attach function from keymaps file
          capabilities = capabilities,
        })
      end
    end,
  },
}
