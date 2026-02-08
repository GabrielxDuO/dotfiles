return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", "Navigate to left" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>", "Navigate to down" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>", "Navigate to up" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>", "Navigate to right" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>", "Navigate back" },
    },
  },
}
