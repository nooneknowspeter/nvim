local mason = require "mason"
local mason_dap = require "mason-nvim-dap"
local dap = require "dap"
local dapui = require "dapui"
local mason_registry = require "mason-registry"

mason.setup()

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

-- codelldb
dap.adapters.lldb = {
  type = "executable",
  command = mason_registry.get_package("codelldb"):get_install_path() .. "/codelldb", -- adjust as needed, must be absolute path
  name = "lldb",
}

-- gdb
dap.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
}

-- js debug adapter
dap.adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = "${port}",
  executable = {
    command = "node",
    args = {
      mason_registry.get_package("js-debug-adapter"):get_install_path() .. "/js-debug/src/dapDebugServer.js",
      "${port}",
    },
  },
}

-- netcore db
dap.adapters.coreclr = {
  type = "executable",
  command = mason_registry.get_package("netcoredbg"):get_install_path() .. "/netcoredbg",
  args = { "--interpreter=vscode" },
}
