return {
  -- images.nvim
  {
    "3rd/image.nvim",
    event = "VeryLazy",
    -- dependencies = { "vhyrro/luarocks.nvim" },
    opts = {},
    config = function()
      require "configs.images"
    end,
  },
}
