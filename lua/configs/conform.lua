local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier", "prettierd" },
    html = { "prettier", "prettierd" },
    javascriptreact = { "prettier", "prettierd" },
    typescriptreact = { "prettier", "prettierd" },
    javascript = { "prettier", "prettierd" },
    typescript = { "prettier", "prettierd" },
    json = { "prettier", "prettierd" },
    yaml = { "prettier", "prettierd" },
    cs = { "csharpier" },
    cpp = { "clang-format" },
    c = { "clang-format" },
    python = { "isort", "black" },
  },

  format_on_save = {
    -- these options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
