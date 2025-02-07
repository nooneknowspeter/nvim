-- lazyvim package manager
require("configs.lazy")

-- load options
require("options")

-- load mappings
vim.schedule(function()
	require("mappings")
end)
