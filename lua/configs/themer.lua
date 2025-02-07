require("telescope").load_extension("themes")

require("themer").setup({
	-- colorscheme = "shado",
	transparent = true,
	term_colors = true,
	dim_inactive = false,
	styles = {
		["function"] = { style = "italic" },
		functionbuiltin = { style = "italic" },
		variable = { style = "italic" },
		variableBuiltIn = { style = "italic" },
		parameter = { style = "italic" },
	},
	plugins = {
		treesitter = true,
		indentline = true,
		barbar = true,
		bufferline = true,
		cmp = true,
		gitsigns = true,
		lsp = true,
		telescope = true,
	},
	enable_installer = true,
})
