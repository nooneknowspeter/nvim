require("image").setup({
	backend = "kitty",
	integrations = {
		markdown = {
			enabled = true,
			only_render_image_at_cursor = true,
			filetypes = { "markdown", "vimwiki", "quarto" },
		},
		html = {
			enabled = false,
		},
		typst = {
			enabled = false,
			filetypes = { "typst" },
		},
		css = {
			enabled = false,
		},
	},
	editor_only_render_when_focused = false, -- auto show/hide images when the editor gains/looses focus
	tmux_show_only_in_active_window = true, -- auto show/hide images in the correct Tmux window (needs visual-activity off)
	max_width = 100,
	max_height = 12,
	max_height_window_percentage = math.huge,
	max_width_window_percentage = math.huge,
	window_overlap_clear_enabled = true,
	window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
})
