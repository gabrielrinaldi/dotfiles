return {
  name = "chezmoi apply",
  desc = "Apply dotfiles with chezmoi",

  builder = function(_)
    return {
      cmd = { "mise" },
      args = { "c" },
      name = "chezmoi apply",
      metadata = {
        task_manager = "mise",
      },
    }
  end,
}
