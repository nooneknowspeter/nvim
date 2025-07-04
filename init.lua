vim.o.termguicolors = true

-- lazyvim package manager
require("core.lazy")

-- load options
require("options")

-- load mappings
vim.schedule(function()
	require("mappings")
end)

-- colorscheme
require("current-theme")
