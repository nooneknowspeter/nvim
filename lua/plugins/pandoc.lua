return {
  -- auto pandoc
  {
    "jghauser/auto-pandoc.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    ft = "markdown",
  },

  -- vim-pandoc
  {
    "vim-pandoc/vim-pandoc",
    enabled = true,
    dependencies = {
      "vim-pandoc/vim-pandoc-syntax",
      lazy = true,
    },
  },
}
