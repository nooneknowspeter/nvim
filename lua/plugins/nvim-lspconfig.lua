return {
  {
    "williamboman/mason.nvim",
    enabled = true,
    cmd = { "Mason", "MasonInstall", "MasonUpdate" },
    opts = function()
      return require "configs.mason"
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    enabled = true,
    lazy = false,
    opts = {
      auto_install = true,
    },
    config = function()
      require("configs.mason-lspconfig")
    end
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { 'saghen/blink.cmp' },
    lazy = false,
    config = function()
      require("configs.nvim-lspconfig")
    end,
  },
}
