return {
  -- Set catppuccin as the default colorscheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    integrations = {
      aerial = true,
      blink_cmp = true,
    },
    opts = {
      flavour = "mocha",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "catppuccin",
      },
    },
  },
}
