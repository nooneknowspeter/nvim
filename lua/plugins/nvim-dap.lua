return {
	{
		"rcarriga/nvim-dap-ui",
		enabled = true,
		dependencies = {
			"mfussenegger/nvim-dap",
			"theHamsta/nvim-dap-virtual-text",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			require("configs.nvim-dap")
		end,
	},
}
