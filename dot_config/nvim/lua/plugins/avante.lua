return {
  -- Setup Avante as AI option
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    opts = {
      provider = "claude",
      auto_suggestions_provider = "copilot", -- Disabled
      cursor_applying_provider = "claude",
      memory_summary_provider = "claude",
      behaviour = {
        support_paste_from_clipboard = true,
        enable_cursor_planning_mode = true,
        enable_claude_text_editor_tool_mode = true,
      },
      system_prompt = function()
        local hub = require("mcphub").get_hub_instance()
        return hub:get_active_servers_prompt()
      end,
      custom_tools = function()
        return {
          require("mcphub.extensions.avante").mcp_tool(),
        }
      end,
      vendors = {
        ["kenobi-llama"] = {
          __inherited_from = "openai",
          api_key_name = "",
          endpoint = "http://100.100.1.50:1234/v1",
          model = "llama-3.3-70b-instruct",
          max_tokens = 20480,
        },
        ["kenobi-qwen"] = {
          __inherited_from = "openai",
          api_key_name = "",
          endpoint = "http://100.100.1.50:1234/v1",
          model = "qwen2.5-coder-32b-instruct",
          max_tokens = 20480,
        },
        ["kenobi-gemma"] = {
          __inherited_from = "openai",
          api_key_name = "",
          endpoint = "http://100.100.1.50:1234/v1",
          model = "gemma-3-27b-it",
          max_tokens = 20480,
        },
      },
    },
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "zbirenbaum/copilot.lua",
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
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "norg", "rmd", "org", "Avante" },
        },
        ft = { "markdown", "norg", "rmd", "org", "Avante" },
      },
    },
  },
}
