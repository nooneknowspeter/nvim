-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  "csharp_ls",
  "ts_ls",
  "cmake",
  "clangd",
  "tailwindcss",
  "sqlls",
  "pyright",
  "postgres_lsp",
  "nginx_language_server",
  "jsonls",
  "graphql",
  "glsl_analyzer",
  "dockerls",
  "eslint-lsp",
}

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
