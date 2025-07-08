local dap = require("dap")
local dapui = require("dapui")
local vscode = require("dap.ext.vscode")
local json = require("plenary.json")

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

-- setup dap config by VsCode launch.json file
vscode.json_decode = function(str)
	return vim.json.decode(json.json_strip_comments(str))
end
