local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier", "prettierd" },
    html = { "prettier", "prettierd" },
    jsx = { "prettier", "prettierd" },
    tsx = { "prettier", "prettierd" },
    js = { "prettier", "prettierd" },
    ts = { "prettier", "prettierd" },
    cs = { "csharpier" },
    cpp = { "clang-format" },
    c = { "clang-format" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
