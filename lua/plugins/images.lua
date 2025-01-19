return {
  -- {
  --   "vhyrro/luarocks.nvim",
  --   priority = 1001, -- this plugin needs to run before anything else
  --   opts = {
  --     rocks = { "magick" },
  --   },
  -- },
  {
    "3rd/image.nvim",
    event = "VeryLazy",
    dependencies = { "luarocks.nvim" },
    opts = {},
    config = function()
      require "configs.images"
    end,
  },
}
