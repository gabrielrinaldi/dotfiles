-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LazyVim config

-- LazyVim picker to use.
-- Can be one of: telescope, fzf
-- Leave it to "auto" to automatically use the picker
-- enabled with `:LazyExtras`
vim.g.lazyvim_picker = "telescope"

-- LazyVim completion engine to use.
-- Can be one of: nvim-cmp, blink.cmp
-- Leave it to "auto" to automatically use the completion engine
-- enabled with `:LazyExtras`
vim.g.lazyvim_cmp = "nvim-cmp"

-- Custom configs
local opt = vim.opt

opt.relativenumber = false
-- opt.commentstring = "# %s"

-- EditorConfig
-- vim.g.editorconfig = true

-- Python
vim.g.python3_host_prog = "~/.asdf/installs/python/3.12.8/bin/python"
