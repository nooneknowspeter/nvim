return {
	-- 'default' for mappings similar to built-in completion
	-- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
	-- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
	-- See the full "keymap" documentation for information on defining your own keymap.
	keymap = { preset = "super-tab" },

	completion = {
		list = {
			selection = {
				-- When `true`, will automatically select the first item in the completion list
				preselect = true,

				-- When `true`, inserts the completion item automatically when selecting it
				-- You may want to bind a key to the `cancel` command (default <C-e>) when using this option,
				-- which will both undo the selection and hide the completion menu
				auto_insert = false,
			},
		},
		accept = {
			auto_brackets = {
				enabled = true,
			},
		},
		menu = {
			border = "rounded",
			winblend = 0,
			scrollbar = true,
			draw = {
				-- We don't need label_description now because label and label_description are already
				-- combined together in label by colorful-menu.nvim.
				columns = { { "kind_icon" }, { "label", gap = 1 } },
				components = {
					label = {
						text = function(ctx)
							return require("colorful-menu").blink_components_text(ctx)
						end,
						highlight = function(ctx)
							return require("colorful-menu").blink_components_highlight(ctx)
						end,
					},
				},
			},
		},
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200,
			window = {
				border = "rounded",
				winblend = 0,
				scrollbar = true,
			},
		},
		ghost_text = {
			enabled = true,
		},
	},
	-- Experimental signature help support
	signature = {
		enabled = true,
		window = {
			border = "rounded",
			winblend = 0,
			scrollbar = false, -- Note that the gutter will be disabled when border ~= 'none'
		},
	},
	sources = {
		-- adding any nvim-cmp sources here will enable them
		-- with blink.compat
		-- remember to enable your providers here
		default = { "lsp", "path", "snippets", "buffer", "ripgrep" },
		providers = {
			-- other sources
			ripgrep = {
				module = "blink-cmp-rg",
				name = "Ripgrep",
				-- options below are optional, these are the default values
				opts = {
					-- `min_keyword_length` only determines whether to show completion items in the menu,
					-- not whether to trigger a search. And we only has one chance to search.
					prefix_min_len = 3,
					get_command = function(_, prefix)
						return {
							"rg",
							"--no-config",
							"--json",
							"--word-regexp",
							"--ignore-case",
							"--",
							prefix .. "[\\w_-]+",
							vim.fs.root(0, ".git") or vim.fn.getcwd(),
						}
					end,
					get_prefix = function(context)
						return context.line:sub(1, context.cursor[2]):match("[%w_-]+$") or ""
					end,
				},
			},
			-- fittencode = {
			--   name = "fittencode",
			--   module = "fittencode.sources.blink",
			-- },
		},
	},
	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "mono",
		-- kind_icons = {},
	},
}
