-- Setup augment commands
require("augment-command"):setup({
  smart_paste = true,
  enter_directory_after_creation = true,
  recursively_extract_archives = false,
  must_have_hovered_item = true,
  smooth_scrolling = true,
  wraparound_file_navigation = true,
})

-- Enable borders
require("full-border"):setup()

-- Enable bookmarks
require("yamb"):setup({
  jump_notify = true,
  path = os.getenv("HOME") .. "/.local/share/yazi/bookmark",
})

-- Enable copy file contents
require("copy-file-contents"):setup({
  append_char = "\n",
  notification = true,
})

-- Enable eza
require("eza-preview"):setup({})

-- Enable fd
require("fg"):setup({
  default_action = "menu",
})

-- Enable git
require("git"):setup()

-- Enable trash-cli
require("restore"):setup({
  show_confirm = true,
})

-- Enable tagging
require("simple-tag"):setup({
  ui_mode = "icon",
  hints_disabled = false,
  linemode_order = 500,
  save_path = os.getenv("HOME") .. "/.local/share/yazi/tags",

  colors = {
    ["!"] = "#f38ba8",
    ["@"] = "#fab387",
    ["$"] = "#f9e2af",
    ["*"] = "#89b4fa",
    ["#"] = "#f5e0dc",
  },

  icons = {
    default = "󰚋",
    ["!"] = "",
    ["@"] = "",
    ["$"] = "󰒘",
    ["*"] = "",
    ["#"] = "󰠦",
  },
})

-- Enable lualine like status line
local catppuccin_theme = require("yatline-catppuccin"):setup("mocha")

require("yatline"):setup({
  theme = catppuccin_theme,

  tab_width = 20,
  tab_use_inverse = false,

  show_background = true,

  display_header_line = true,
  display_status_line = true,

  component_positions = { "header", "tab", "status" },

  header_line = {
    left = {
      section_a = {
        { type = "line", custom = false, name = "tabs", params = { "left" } },
      },
      section_b = {
        { type = "coloreds", custom = false, name = "githead" },
      },
      section_c = {},
    },
    right = {
      section_a = {
        { type = "string", custom = false, name = "date", params = { "%A, %d %B %Y" } },
      },
      section_b = {
        { type = "string", custom = false, name = "date", params = { "%X" } },
      },
      section_c = {},
    },
  },

  status_line = {
    left = {
      section_a = {
        { type = "string", custom = false, name = "tab_mode" },
      },
      section_b = {
        { type = "string", custom = false, name = "hovered_size" },
      },
      section_c = {
        { type = "string", custom = false, name = "hovered_path" },
        { type = "coloreds", custom = false, name = "count" },
      },
    },
    right = {
      section_a = {
        { type = "string", custom = false, name = "cursor_position" },
      },
      section_b = {
        { type = "string", custom = false, name = "cursor_percentage" },
      },
      section_c = {
        { type = "string", custom = false, name = "hovered_file_extension", params = { true } },
        { type = "coloreds", custom = false, name = "permissions" },
        { type = "coloreds", custom = false, name = "task_states" },
      },
    },
  },
})

require("yatline-githead"):setup({
  theme = catppuccin_theme,
})
