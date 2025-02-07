return {
  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    cmd = "Telescope",
    opts = function()
      return require "configs.telescope"
    end,
  },

  -- telescope ui select
  {
    "nvim-telescope/telescope-ui-select.nvim",
    enabled = true,
    event = "VeryLazy",

    config = function()
      require "configs.telescope-ui-select"
    end,
  },
}
