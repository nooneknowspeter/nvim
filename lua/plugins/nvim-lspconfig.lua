return {
	{
		"neovim/nvim-lspconfig",
		enabled = true,
		dependencies = { "saghen/blink.cmp" },
		lazy = false,
		config = function()
			require("configs.nvim-lspconfig")
		end,
	},
}
