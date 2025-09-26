return {
	-- file managing , picker etc
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				filesystem = {
					follow_current_file = {
						enabled = true,
						leave_dirs_open = true,
					},
					use_libuv_file_watcher = true,
				},
				buffers = {
					follow_current_file = {
						enabled = true,
						leave_dirs_open = true,
					},
				},
			})
		end,
	},
}
