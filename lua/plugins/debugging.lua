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
      { "nooneknowspeter/mason-nvim-dap.nvim", branch = "fix/js-dap-types" },
      "nvim-neotest/nvim-nio",
      "mxsdev/nvim-dap-vscode-js",
      "jbyuki/one-small-step-for-vimkind",
    },
    config = function()
      require "configs.dap"
    end,
  },
}
