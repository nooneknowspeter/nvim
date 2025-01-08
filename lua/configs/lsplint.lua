local lint = require "lint"
local mason_registry = require "mason-registry"

-- initialize the linters_by_ft table dynamically
local linters_by_ft = {}

-- use mason's metadata to include all available linters
for _, package in ipairs(mason_registry.get_installed_packages()) do
  if package.spec.categories[1] == "linter" then
    for _, ft in ipairs(package.spec.filetypes or {}) do
      linters_by_ft[ft] = linters_by_ft[ft] or {}
      table.insert(linters_by_ft[ft], package.name)
    end
  end
end

-- assign the dynamically built table to lint.linters_by_ft
lint.linters_by_ft = linters_by_ft

-- autogroup for running linters
local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
vim.api.nvim_create_autocmd({ "bufenter", "bufwritepost", "insertleave" }, {
  group = lint_augroup,
  callback = function()
    lint.try_lint()
  end,
})
