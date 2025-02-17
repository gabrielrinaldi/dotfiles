return {
  {
    -- Treesitter additional file types
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, _)
      vim.filetype.add({
        extension = { jbuilder = "ruby" },
      })
    end,
  },
}
