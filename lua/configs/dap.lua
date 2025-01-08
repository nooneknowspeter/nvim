local mason = require "mason"
local mason_dap = require "mason-nvim-dap"
local dap = require "dap"
local dapui = require "dapui"
-- local mason_registry = require "mason-registry"

mason.setup()

mason_dap.setup {
  automatic_installation = true,
  handlers = {
    function(config)
      -- default handler for all sources without a specific handler
      require("mason-nvim-dap").default_setup(config)
    end,
  },
}

-- dap ui setup
dapui.setup()
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

-- breakpoint icons
vim.fn.sign_define("DapBreakpoint", { text = "👾" })

vim.fn.sign_define('DapStopped',{ text ='💸'})
