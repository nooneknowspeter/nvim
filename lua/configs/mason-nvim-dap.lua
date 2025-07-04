require("mason").setup()
require("mason-nvim-dap").setup({
	automatic_installation = false,
	handlers = {
		function(config)
			-- default handler for all sources without a specific handler
			require("mason-nvim-dap").default_setup(config)
		end,
	},
})
