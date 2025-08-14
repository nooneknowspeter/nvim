return {
	{
		"mg979/vim-visual-multi",
		enabled = true,
		lazy = false,
		init = function()
			vim.g.VM_maps = {
				["Find Under"] = "<Leader>m",
				["Find Subword Under"] = "<Leader>m",
			}
		end,
	},
}
