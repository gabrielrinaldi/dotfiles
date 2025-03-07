-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  { "n", "v" },
  "<leader>aa",
  "<cmd>CodeCompanionActions<cr>",
  { desc = "ai actions", noremap = true, silent = true }
)
vim.keymap.set(
  { "n", "v" },
  "<leader>ac",
  "<cmd>CodeCompanionChat Add<cr>",
  { desc = "ai chat", noremap = true, silent = true }
)
