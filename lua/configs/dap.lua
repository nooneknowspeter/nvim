-- ensure mason and nvim-dap integration
require("mason").setup()
require("mason-nvim-dap").setup {
  -- automatically install debug adapters
  automatic_installation = true,

  -- handlers for setting up adapters
  handlers = {
    function(config)
      require("mason-nvim-dap").default_setup(config)
    end,
  },
}

-- import mason nvim-dap module
local mason_dap = require "mason-nvim-dap"

-- list of dap adapters to install
local dap_adapters = {
  "codelldb",
  "debugpy",
  "node-debug2",
}

-- ensure all dap adapters are installed
for _, adapter in ipairs(dap_adapters) do
  mason_dap.ensure_installed { adapter }
end
