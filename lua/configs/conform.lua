local mason_registry = require "mason-registry"

-- initialize the formatters_by_ft table dynamically
local formatters_by_ft = {}

-- use mason's metadata to include all available formatters
for _, package in ipairs(mason_registry.get_installed_packages()) do
  if package.spec.categories[1] == "formatter" then
    for _, ft in ipairs(package.spec.filetypes or {}) do
      formatters_by_ft[ft] = formatters_by_ft[ft] or {}
      table.insert(formatters_by_ft[ft], package.name)
    end
  end
end

local options = {
  formatters_by_ft = formatters_by_ft,
  format_on_save = {
    -- these options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
