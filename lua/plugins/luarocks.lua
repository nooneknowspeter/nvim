return {
  -- luarocks
  {
    "vhyrro/luarocks.nvim",
    enable = false,
    priority = 1001, -- this plugin needs to run before anything else
    opts = {
      rocks = { "magick" },
    },
  },
}
