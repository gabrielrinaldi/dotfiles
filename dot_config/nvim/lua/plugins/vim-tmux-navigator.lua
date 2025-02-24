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
      { "<C-Left> <C-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<C-Down> <C-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<C-up> <C-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<C-right> <C-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<C-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
