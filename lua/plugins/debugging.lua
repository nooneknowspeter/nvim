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
      "jay-babu/mason-nvim-dap.nvim",
      "nvim-neotest/nvim-nio",
      "jbyuki/one-small-step-for-vimkind",
      -- {
      --   "mxsdev/nvim-dap-vscode-js",
      --   dependencies = {
      --     "microsoft/vscode-js-debug",
      --     version = "1.x",
      --     build = "npm i && npm run compile vsDebugServerBundle && mv dist out",
      --   },
      -- },
    },
    config = function()
      require "configs.dap"
    end,
  },
}
