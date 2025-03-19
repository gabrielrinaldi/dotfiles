-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Custom configs
local opt = vim.opt

-- Enable spell checking
opt.spell = true

-- Views can only be fully collapsed with the global statusline
opt.laststatus = 3
