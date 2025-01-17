return {
  -- language servers; neovim lsp
  {
    "williamboman/mason-lspconfig.nvim",
    enabled = true,
    event = "VeryLazy",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    event = "User FilePost",
    config = function()
      require("configs.lspconfig").defaults()
    end,
  },
}
