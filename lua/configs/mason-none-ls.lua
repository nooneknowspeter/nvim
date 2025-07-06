require("null-ls").setup()

require("mason").setup()
require("mason-null-ls").setup({
	ensure_installed = {},
	automatic_installation = true,
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
