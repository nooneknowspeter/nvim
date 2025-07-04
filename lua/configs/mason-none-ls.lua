require("mason").setup()
require("mason-null-ls").setup({
	ensure_installed = {
		"stylua",
	},
	automatic_installation = false,
	methods = {
		diagnostics = true,
		formatting = true,
		code_actions = true,
		completion = true,
		hover = true,
	},
	handlers = {},
	debug = true,
})
