local mason = require "mason"
local mason_dap = require "mason-nvim-dap"
local dap = require "dap"
local dapui = require "dapui"
local mason_registry = require "mason-registry"

mason.setup()

mason_dap.setup {
  ensure_installed = { "python", "js", "codelldb", "cppdb", "coreclr" },
  automatic_installation = true,
  handlers = {
    function(config)
      -- default handler for all sources without a specific handler
      require("mason-nvim-dap").default_setup(config)
    end,
    python = function(config)
      -- custom handler for python debug adapter
      config.adapters = {
        type = "executable",
        command = "/usr/bin/python3",
        args = { "-m", "debugpy.adapter" },
      }
      require("mason-nvim-dap").default_setup(config) -- keep default functionality
    end,
  },
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

-- -- debugging
--
-- -- codelldb
-- dap.adapters.lldb = {
--   type = "executable",
--   command = mason_registry.get_package("codelldb"):get_install_path() .. "/codelldb", -- adjust as needed, must be absolute path
--   name = "lldb",
-- }
--
-- dap.adapters.codelldb = {
--   type = "executable",
--   command = mason_registry.get_package("codelldb"):get_install_path() .. "/codelldb", -- adjust as needed, must be absolute path
--   name = "lldb",
-- }
--
-- -- cpptools
-- dap.adapters.cppdbg = {
--   id = "cppdbg",
--   type = "executable",
--   command = mason_registry.get_package("cpptools"):get_install_path() .. "/extension/debugAdapters/bin/OpenDebugAD7",
-- }
--
-- -- netcore db
-- dap.adapters.coreclr = {
--   type = "executable",
--   command = mason_registry.get_package("netcoredbg"):get_install_path() .. "/netcoredbg",
--   args = { "--interpreter=vscode" },
-- }
--
-- -- js debug adapter; chrome, node, msedge
-- local js_dap_root = mason_registry.get_package("js-debug-adapter"):get_install_path()
--   .. "/js-debug/src/dapDebugServer.js"
--
-- dap.adapters["pwa-node"] = {
--   type = "server",
--   host = "localhost",
--   port = "${port}",
--   executable = {
--     command = "node",
--     args = { js_dap_root, "${port}" },
--   },
-- }
--
-- dap.adapters["pwa-chrome"] = {
--   type = "server",
--   host = "localhost",
--   port = "${port}",
--   executable = {
--     command = "node",
--     args = { js_dap_root, "${port}" },
--   },
-- }
--
-- dap.adapters["pwa-msedge"] = {
--
--   type = "server",
--   host = "localhost",
--   port = "${port}",
--   executable = {
--     command = "node",
--     args = { js_dap_root, "${port}" },
--   },
-- }
--
-- dap.adapters["node-terminal"] = {
--
--   type = "server",
--   host = "localhost",
--   port = "${port}",
--   executable = {
--     command = "node",
--     args = { js_dap_root, "${port}" },
--   },
-- }
--
-- dap.adapters["pwa-extensionHost"] = {
--
--   type = "server",
--   host = "localhost",
--   port = "${port}",
--   executable = {
--     command = "node",
--     args = { js_dap_root, "${port}" },
--   },
-- }
--
-- dap.adapters["chrome"] = {
--
--   type = "server",
--   host = "localhost",
--   port = "${port}",
--   executable = {
--     command = "node",
--     args = { js_dap_root, "${port}" },
--   },
-- }
--
-- dap.adapters["node"] = {
--
--   type = "server",
--   host = "localhost",
--   port = "${port}",
--   executable = {
--     command = "node",
--     args = { js_dap_root, "${port}" },
--   },
-- }
