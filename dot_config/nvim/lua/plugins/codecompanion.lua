return {
  -- Setup CodeCompanion for AI
  {
    "olimorris/codecompanion.nvim",
    config = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      adapters = {
        anthropic = function()
          return require("codecompanion.adapters").extend("anthropic", {
            env = {
              api_key = "cmd:op read op://Employee/Anthropic/credential --no-newline",
            },
          })
        end,
        opts = {
          show_defaults = false,
        },
      },
      strategies = {
        chat = {
          adapter = "anthropic",
        },
        inline = {
          adapter = "anthropic",
        },
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "codecompanion" },
        per_filetype = {
          codecompanion = { "codecompanion" },
        },
      },
    },
  },
}
