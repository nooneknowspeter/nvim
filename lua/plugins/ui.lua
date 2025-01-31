return {
  -- fidget
  {
    "j-hui/fidget.nvim",
    enabled = true,
    event = "VeryLazy",
    opts = function()
      require "configs.fidget"
    end,
  },

  {
    -- noice
    "folke/noice.nvim",
    enabled = true,
    event = "VeryLazy",
    config = function()
      require "configs.noice"
    end,
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      -- "rcarriga/nvim-notify",
    },
  },

  -- notify
  {
    "rcarriga/nvim-notify",
    enabled = false,
    config = function()
      require "configs.notify" -- load your notify configuration
    end,
  },

  -- nui.nvim
  {
    "MunifTanjim/nui.nvim",
    enabled = true,
    event = "VeryLazy",
  },

  -- nvchad base46
  {
    "nvchad/base46",
    enabled = true,
    build = function()
      require("base46").load_all_highlights()
    end,
  },

  -- nvchad ui
  {
    "nvchad/ui",
    enabled = true,
    lazy = false,
    config = function()
      require "nvchad"
    end,
  },

  -- nvim webdev icons
  {
    "nvim-tree/nvim-web-devicons",
    enabled = true,
    opts = function()
      dofile(vim.g.base46_cache .. "devicons")
      return { override = require "nvchad.icons.devicons" }
    end,
  },

  -- nvzone
  {
    "nvzone/volt",
    enabled = true,
    lazy = true,
  },
  {
    "nvzone/menu",
    enabled = true,
    lazy = true,
  },

  { "nvzone/minty", cmd = { "Huefy", "Shades" } },
}
