return {
  -- Use OpenTofu to format
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        tfmt = {
          -- Specify the command and its arguments for formatting
          command = "tofu",
          args = { "fmt", "-" },
          stdin = true,
        },
      },
    },
  },
}
