return {
	{
		"sylvanfranklin/omni-preview.nvim",
		enabled = true,
		dependencies = {
			{ "chomosuke/typst-preview.nvim", lazy = true },
			{ "hat0uma/csvview.nvim",         lazy = true },
			{ "tigion/nvim-asciidoc-preview", lazy = true },
			{
				"iamcco/markdown-preview.nvim",
				lazy = true,
				build = ":call mkdp#util#install()",
				init = function()
					vim.g.mkdp_filetypes = { "markdown" }
				end,
				ft = { "markdown" },
			},
		},
		opts = {},
		config = function()
			require("omni-preview").setup()

			require("csvview").setup()
		end,
		keys = {
			{ "<leader>po", "<cmd>OmniPreview start<CR>", desc = "OmniPreview Start" },
			{ "<leader>px", "<cmd>OmniPreview stop<CR>",  desc = "OmniPreview Stop" },
		},
	},
}
