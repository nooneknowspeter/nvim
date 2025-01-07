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

-- cpptools
dap.adapters.cppdbg = {
  id = "cppdbg",
  type = "executable",
  command = mason_registry.get_package("cpptools"):get_install_path() .. "/extension/debugAdapters/bin/OpenDebugAD7",
}

-- js debug adapter; node, chrome, edge, node-terminal
require("dap-vscode-js").setup {
  -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  -- debugger_path = "(runtimedir)/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation.
  -- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
  adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
  -- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
  -- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
  -- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
}

-- netcore db
dap.adapters.coreclr = {
  type = "executable",
  command = mason_registry.get_package("netcoredbg"):get_install_path() .. "/netcoredbg",
  args = { "--interpreter=vscode" },
}

-- python
require("dap-python").setup(mason_registry.get_package("debugpy"):get_install_path() "/venv/bin/python")
