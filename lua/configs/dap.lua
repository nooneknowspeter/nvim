local mason = require "mason"
local mason_dap = require "mason-nvim-dap"
local dap = require "dap"
local dapui = require "dapui"
-- local vscode_js_dap = require "dap-vscode-js"
-- local mason_registry = require "mason-registry"

mason.setup()

-- mason nvim dap
mason_dap.setup {
  automatic_installation = true,
  handlers = {
    function(config)
      -- default handler for all sources without a specific handler
      require("mason-nvim-dap").default_setup(config)
    end,
  },
}

-- -- -- vscode js dap
-- -- vscode_js_dap.setup {
-- --   node_path = "/home/nooneknows/.nvm/versions/node/v23.6.0/bin/node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
-- --   debugger_path = "/home/nooneknows/.config/nvim/daps/vscode-js-debug", -- Path to vscode-js-debug installation.
-- --   debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
-- --   adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
-- --   -- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
-- --   -- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
-- --   -- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
-- -- }
-- --
-- for _, language in ipairs { "typescript", "javascript" } do
--   require("dap").configurations[language] = {
--     {
--       type = "pwa-node",
--       request = "launch",
--       name = "Launch file",
--       program = "${file}",
--       cwd = "${workspaceFolder}",
--     },
--     {
--       type = "pwa-node",
--       request = "attach",
--       name = "Attach",
--       processId = require("dap.utils").pick_process,
--       cwd = "${workspaceFolder}",
--     },
--     {
--       type = "pwa-node",
--       request = "launch",
--       name = "Debug Jest Tests",
--       -- trace = true, -- include debugger info
--       runtimeExecutable = "node",
--       runtimeArgs = {
--         "./node_modules/jest/bin/jest.js",
--         "--runInBand",
--       },
--       rootPath = "${workspaceFolder}",
--       cwd = "${workspaceFolder}",
--       console = "integratedTerminal",
--       internalConsoleOptions = "neverOpen",
--     },
--     {
--       type = "pwa-node",
--       request = "launch",
--       name = "Debug Mocha Tests",
--       -- trace = true, -- include debugger info
--       runtimeExecutable = "node",
--       runtimeArgs = {
--         "./node_modules/mocha/bin/mocha.js",
--       },
--       rootPath = "${workspaceFolder}",
--       cwd = "${workspaceFolder}",
--       console = "integratedTerminal",
--       internalConsoleOptions = "neverOpen",
--     },
--   }
-- end

-- one small step for mankind
dap.adapters.nlua = function(callback, conf)
  local adapter = {
    type = "server",
    host = conf.host or "127.0.0.1",
    port = conf.port or 8086,
  }
  if conf.start_neovim then
    local dap_run = dap.run
    dap.run = function(c)
      adapter.port = c.port
      adapter.host = c.host
    end
    require("osv").run_this()
    dap.run = dap_run
  end
  callback(adapter)
end
dap.configurations.lua = {
  {
    type = "nlua",
    request = "attach",
    name = "Run this file",
    start_neovim = {},
  },
  {
    type = "nlua",
    request = "attach",
    name = "Attach to running Neovim instance (port = 8086)",
    port = 8086,
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

vim.fn.sign_define("DapStopped", { text = "💸" })
