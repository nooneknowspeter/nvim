local dap = require "dap"
local dapui = require "dapui"

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

vim.fn.sign_define("DapStopped", { text = "💸" })
