return {
  -- 'default' for mappings similar to built-in completion
  -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
  -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
  -- See the full "keymap" documentation for information on defining your own keymap.
  keymap = {
    preset = "default",
    ["<S-k>"] = { "scroll_documentation_up", "fallback" },
    ["<S-j>"] = { "scroll_documentation_down", "fallback" },
  },

  appearance = {
    highlight_ns = vim.api.nvim_create_namespace("blink_cmp"),
    use_nvim_cmp_as_default = false,
    nerd_font_variant = "mono",
    -- kind_icons = {},
  },

  -- fuzzy = { implementation = "prefer_rust" },

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
      winblend = 5,
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
        winblend = 5,
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
      winblend = 5,
      scrollbar = false, -- Note that the gutter will be disabled when border ~= 'none'
    },
  },

  snippets = {
    preset = "luasnip",
  },

  sources = {
    -- adding any nvim-cmp sources here will enable them
    -- with blink.compat
    -- remember to enable your providers here
    default = { "lazydev", "lsp", "path", "snippets", "buffer", },
    providers = {
      -- other sources
      lazydev = {
        name = "LazyDev",
        module = "lazydev.integrations.blink",
        -- make lazydev completions top priority (see `:h blink.cmp`)
        score_offset = 100,
      },
    },
  },

}
