-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.relativenumber = false
opt.commentstring = "# %s"

vim.g.python3_host_prog = "~/.asdf/installs/python/3.12.8/bin/python"
