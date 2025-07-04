return {
	-- debugging; nvim dap, dap ui
	{
		"rcarriga/nvim-dap-ui",
		enabled = true,
		event = "VeryLazy",
		dependencies = {
			"mfussenegger/nvim-dap",
			"theHamsta/nvim-dap-virtual-text",
			"nvim-neotest/nvim-nio",

			"jbyuki/one-small-step-for-vimkind",
		},
		config = function()
			require("configs.nvim-dap")
		end,
	},
}
