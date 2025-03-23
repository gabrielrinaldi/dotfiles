-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

wk.add({
  -- Aavante
  { "<leader>a", group = "ai" },
  { "<leader>am", desc = "Avante MCP", icon = "󰴗" },
  -- Yazi
  {
    "<leader>-",
    mode = { "n", "v" },
    "<cmd>Yazi<cr>",
    desc = "Open yazi at the current file",
  },
  {
    "<leader>cw",
    "<cmd>Yazi cwd<cr>",
    desc = "Open the file manager in nvim's working directory",
  },
  {
    "<c-up>",
    "<cmd>Yazi toggle<cr>",
    desc = "Resume the last yazi session",
  },
})
