return {
  {
    -- Navigate between vim and tmux panes using the same keys
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<C-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", desc = "Go to Left Window" },
      { "<C-j>", "<cmd><C-U>TmuxNavigateDown<cr>", desc = "Go to Lower Window" },
      { "<C-k>", "<cmd><C-U>TmuxNavigateUp<cr>", desc = "Go to Upper Window" },
      { "<C-l>", "<cmd><C-U>TmuxNavigateRight<cr>", desc = "Go to Right Window" },
      { "<C-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
