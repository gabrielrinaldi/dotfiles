return {
  -- Obsidian
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/Obsidian/Personal",
        },
        {
          name = "work",
          path = "~/Obsidian/GLS Solutions",
        },
      },
    },
  },
}
