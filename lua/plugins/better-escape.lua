return {
	-- better escape; escape using key combo (currently set to jk)
	{
		"max397574/better-escape.nvim",
		enabled = true,
		config = function()
			-- lua, default settings
			require("better_escape").setup({
				timeout = vim.o.timeoutlen,
				default_mappings = false,
				mappings = {
					i = {
						j = {
							-- These can all also be functions
							j = "<Esc>",
						},
					},
					c = {
						j = {
							j = "<Esc>",
						},
					},
					t = {
						j = {
							j = "<C-\\><C-n>",
						},
					},
					v = {
						j = {
							j = "<Esc>",
						},
					},
					s = {
						j = {
							j = "<Esc>",
						},
					},
				},
			})
		end,
		lazy = false,
	},
}
