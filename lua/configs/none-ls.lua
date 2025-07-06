local null_ls = require("null-ls")

null_ls.setup()

-- format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

vim.api.nvim_create_autocmd("BufWritePre", {
	group = augroup,
	pattern = "*", -- Apply to all file types
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})
