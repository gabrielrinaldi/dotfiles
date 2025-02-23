return {
  {
    -- Treesitter additional file types
    "nvim-treesitter/nvim-treesitter",
    init = function()
      require("vim.treesitter.query").add_predicate("is-mise?", function(_, _, bufnr, _)
        local filepath = vim.api.nvim_buf_get_name(tonumber(bufnr) or 0)
        local filename = vim.fn.fnamemodify(filepath, ":t")
        return string.match(filename, ".*mise.*%.toml$")
      end, { force = true, all = false })
    end,
    opts = function(_, _)
      vim.filetype.add({
        extension = { jbuilder = "ruby" },
      })
    end,
  },
}
