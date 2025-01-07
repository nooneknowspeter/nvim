local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "eslint_d", "prettierd" },
    html = { "eslint_d", "prettierd" },
    javascriptreact = { "eslint_d", "prettierd" },
    typescriptreact = { "eslint_d", "prettierd" },
    javascript = { "eslint_d", "prettierd" },
    typescript = { "eslint_d", "prettierd" },
    json = { "eslint_d", "prettierd" },
    yaml = { "eslint_d", "prettierd" },
    cs = { "csharpier" },
    cpp = { "clang-format" },
    c = { "clang-format" },
    python = { "isort", "black" },
    graphql = { "pretterd" },
    markdown = { "pretterd" },
  },

  format_on_save = {
    -- these options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
