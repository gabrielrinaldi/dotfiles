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
      provider = "openai",
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
      disabled_tools = {
        "bash",
        "create_dir",
        "create_file",
        "delete_dir",
        "delete_file",
        "fetch",
        "git_commit",
        "git_diff",
        "list_files",
        "read_file",
        "rename_dir",
        "rename_file",
        "search_files",
        "web_search",
      },
      file_selector = {
        provider = "snacks",
        provider_opts = {},
      },
      rag_service = {
        enabled = true,
      },
      vendors = {
        ["kenobi-athene"] = {
          __inherited_from = "ollama",
          endpoint = "http://10.10.0.13:11434",
          model = "athene-v2:72b-q8_0",
          max_tokens = 32768,
        },
        ["kenobi-mistral"] = {
          __inherited_from = "ollama",
          endpoint = "http://10.10.0.13:11434",
          model = "mistral-small3.1:24b-instruct-2503-q8_0",
          max_tokens = 32768,
        },
        ["kenobi-gemma"] = {
          __inherited_from = "ollama",
          endpoint = "http://10.10.0.13:11434",
          model = "gemma3:27b-it-q8_0",
          max_tokens = 32768,
          disable_tools = true,
        },
        ["kenobi-deepcoder"] = {
          __inherited_from = "ollama",
          endpoint = "http://10.10.0.13:11434",
          model = "deepcoder:14b-preview-q8_0",
          max_tokens = 32768,
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
