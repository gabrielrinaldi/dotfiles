return {
  -- Setup Avante as AI option
  {
    "yetone/avante.nvim",
    lazy = true,
    event = "VeryLazy",
    version = false,
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "ravitemer/mcphub.nvim",
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
          },
        },
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        optional = true,
        ft = function(_, ft)
          vim.list_extend(ft, { "Avante" })
        end,
        opts = function(_, opts)
          opts.file_types = vim.list_extend(opts.file_types or {}, { "Avante" })
        end,
      },
    },
    opts = {
      provider = "claude",
      cursor_applying_provider = "claude",
      memory_summary_provider = "claude",
      behaviour = {
        support_paste_from_clipboard = true,
        enable_cursor_planning_mode = true,
        enable_claude_text_editor_tool_mode = true,
      },
      system_prompt = function()
        local hub = require("mcphub").get_hub_instance()
        if hub == nil then
          return nil
        else
          return hub:get_active_servers_prompt()
        end
      end,
      custom_tools = function()
        return {
          require("mcphub.extensions.avante").mcp_tool(),
        }
      end,
      hints = { enabled = true },
      file_selector = {
        provider = "snacks",
        provider_opts = {},
      },
      vendors = {
        ["kenobi-llama"] = {
          __inherited_from = "openai",
          api_key_name = "",
          endpoint = "http://100.100.1.50:1234/v1",
          model = "llama-3.3-70b-instruct",
          max_tokens = 8192,
        },
        ["kenobi-qwen"] = {
          __inherited_from = "openai",
          api_key_name = "",
          endpoint = "http://100.100.1.50:1234/v1",
          model = "qwen2.5-coder-32b-instruct",
          max_tokens = 8192,
          disable_tools = true,
        },
        ["kenobi-gemma"] = {
          __inherited_from = "openai",
          api_key_name = "",
          endpoint = "http://100.100.1.50:1234/v1",
          model = "gemma-3-27b-it",
          max_tokens = 4096,
          disable_tools = true,
        },
        ["kenobi-deepseek"] = {
          __inherited_from = "openai",
          api_key_name = "",
          endpoint = "http://100.100.1.50:1234/v1",
          model = "deepseek-coder-v2-lite-instruct-mlx",
          max_tokens = 8192,
          disable_tools = true,
        },
      },
    },
  },
  {
    "stevearc/dressing.nvim",
    lazy = true,
    opts = {
      input = { enabled = false },
      select = { enabled = false },
    },
  },
  {
    "saghen/blink.compat",
    lazy = true,
    opts = {},
    config = function()
      require("cmp").ConfirmBehavior = {
        Insert = "insert",
        Replace = "replace",
      }
    end,
  },
  {
    "saghen/blink.cmp",
    lazy = true,
    opts = {
      sources = {
        default = { "avante_commands", "avante_mentions", "avante_files" },
        providers = {
          avante_commands = {
            name = "avante_commands",
            module = "blink.compat.source",
            score_offset = 90,
            opts = {},
          },
          avante_files = {
            name = "avante_files",
            module = "blink.compat.source",
            score_offset = 100,
            opts = {},
          },
          avante_mentions = {
            name = "avante_mentions",
            module = "blink.compat.source",
            score_offset = 1000,
            opts = {},
          },
        },
      },
    },
  },
}
