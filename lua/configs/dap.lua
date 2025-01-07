local mason_dap = require "mason-nvim-dap"
local dap = require "dap"
local dapui = require "dapui"

mason_dap.setup {
  ensure_installed = { "python", "node2", "chrome", "js", "codelldb", "bash" },
  automatic_installation = true,
}

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

-- breakpoint icon
vim.fn.sign_define("DapBreakpoint", { text = "👾" })
