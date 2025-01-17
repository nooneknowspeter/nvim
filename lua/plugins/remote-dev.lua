return {
  -- remote nvim
  {
    "amitds1997/remote-nvim.nvim",
    enabled = true,
    event = "VeryLazy",
    version = "*",                     -- Pin to GitHub releases
    dependencies = {
      "nvim-lua/plenary.nvim",         -- For standard functions
      "MunifTanjim/nui.nvim",          -- To build the plugin UI
      "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
    },
    config = true,
  },

  -- remote ssh
  {
    "nosduco/remote-sshfs.nvim",
    enabled = true,
    event = "VeryLazy",
    dependencies = { "nvim-telescope/telescope.nvim" },
    opts = {
      -- refer to the configuration section below
      -- or leave empty for defaults
    },
  },
}
