return {
	{
		"williamboman/mason.nvim",
		enabled = true,
		cmd = { "Mason", "MasonInstall", "MasonUpdate" },
		opts = function()
			return require("configs.mason")
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		enabled = true,
		dependencies = { "williamboman/mason.nvim" },
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("configs.mason-lspconfig")
		end,
	},

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
