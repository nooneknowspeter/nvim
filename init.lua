vim.o.termguicolors = true

-- load options
require("options")

-- load mappings
vim.schedule(function()
  require("mappings")
end)

-- lazyvim package manager
require("core.lazy")

-- colorscheme
require("current-theme")
