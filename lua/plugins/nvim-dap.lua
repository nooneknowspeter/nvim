return {
  -- debugging; nvim dap, dap ui
  {
    "rcarriga/nvim-dap-ui",
    enabled = true,
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
      "theHamsta/nvim-dap-virtual-text",
      { "nooneknowspeter/mason-nvim-dap.nvim", branch = "feat/additional-js-dap-configs" },
      "nvim-neotest/nvim-nio",

      "jbyuki/one-small-step-for-vimkind",
    },
    config = function()
      require "configs.nvim-dap"
    end,
  },
}
