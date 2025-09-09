return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter", -- Load the plugin when you enter insert mode
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      local npairs = require("nvim-autopairs")
      npairs.setup({
        check_ts = true, -- Enable treesitter integration
        ts_config = {
          lua = { "string", "source" },
          javascript = { "string", "template_string" },
          java = false,
        },
        fast_wrap = {},
      })

      -- This makes pressing Enter inside braces automatically add a new indented line
      -- and place the closing brace on its own line (which is what you want!)
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp = require("cmp") -- Make sure cmp is loaded
      cmp.event:on(
        "confirm_done",
        cmp_autopairs.on_confirm_done()
      )
    end,
  },
}
