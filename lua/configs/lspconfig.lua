-- load defaults i.e., lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local mason_registry = require "mason-registry"
local nvlsp = require "nvchad.configs.lspconfig"

-- get the list of all installed lsps from mason
local servers = {}

for _, package in ipairs(mason_registry.get_installed_packages()) do
  if package.spec.categories[1] == "lsp" then
    table.insert(servers, package.name)
  end
end

-- configure each lsp
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
