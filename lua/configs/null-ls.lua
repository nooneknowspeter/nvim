local mason = require "mason"
local mason_null_ls = require "mason-null-ls"

mason.setup()

mason_null_ls.setup {
  ensure_installed = {
    "stylua",
  },
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
}

-- format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  pattern = "*", -- Apply to all file types
  callback = function()
    vim.lsp.buf.format { async = false }
  end,
})

vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, { desc = "󰈔 Format Document" })
