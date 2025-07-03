return {
  -- better escape; escape using key combo (currently set to jk)
  {
    "max397574/better-escape.nvim",
    enabled = true,
    config = function()
      require("better_escape").setup()
    end,
    lazy = false,
  },
}
