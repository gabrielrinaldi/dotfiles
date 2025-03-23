return {
  {
    -- Custom overseer tasks
    "stevearc/overseer.nvim",
    opts = {
      templates = {
        "builtin",
        "user.chezmoi",
      },
    },
  },
}
