return {
  -- better escape; escape using key combo (currently set to jk)
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
    lazy = false,
  },

  -- cmake tools
  {
    "Civitasv/cmake-tools.nvim",
    lazy = true,
    event = "VeryLazy",
    init = function()
      local loaded = false
      local function check()
        local cwd = vim.uv.cwd()
        if vim.fn.filereadable(cwd .. "/CMakeLists.txt") == 1 then
          require("lazy").load { plugins = { "cmake-tools.nvim" } }
          loaded = true
        end
      end
      check()
      vim.api.nvim_create_autocmd("DirChanged", {
        callback = function()
          if not loaded then
            check()
          end
        end,
      })
    end,
    opts = {},
  },

  -- conform
  {
    "stevearc/conform.nvim",
    enabled = false,
    opts = {},
  },

  -- dadbod; database tools
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      { "tpope/vim-dadbod", lazy = true },
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },

  -- fine cmdline
  {
    "vonheikemen/fine-cmdline.nvim",
    event = "VeryLazy",
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
      require "configs.fine-cmdline"
    end,
  },

  -- lazygit vim
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  -- markdown previewer
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  -- multicursors
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvimtools/hydra.nvim",
    },
    opts = {},
    cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
    keys = {
      {
        mode = { "v", "n" },
        "<Leader>m",
        "<cmd>MCstart<cr>",
        desc = "Create a selection for selected text or word under the cursor",
      },
    },
  },

  -- language servers; neovim lsp
  {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- notify
  {
    "rcarriga/nvim-notify",
    config = function()
      require "configs.notify" -- load your notify configuration
    end,
  },

  -- formatting and linting; null ls
  {
    "nvimtools/none-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jay-babu/mason-null-ls.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require "configs.null-ls"
    end,
  },

  -- syntax highlighting; nvim treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    opts = require "configs.treesitter",
  },

  -- debugging; nvim dap, dap ui
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
      "theHamsta/nvim-dap-virtual-text",
      "jay-babu/mason-nvim-dap.nvim",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require "configs.dap"
    end,
  },

  -- nvim surround
  {
    "kylechui/nvim-surround",
    version = "*", -- use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require "configs.nvim-surround"
    end,
  },

  -- plenery
  {
    "nvim-lua/plenary.nvim",
  },

  -- remote nvim
  {
    "amitds1997/remote-nvim.nvim",
    event = "VeryLazy",
    version = "*", -- Pin to GitHub releases
    dependencies = {
      "nvim-lua/plenary.nvim", -- For standard functions
      "MunifTanjim/nui.nvim", -- To build the plugin UI
      "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
    },
    config = true,
  },

  -- remote ssh
  {
    "nosduco/remote-sshfs.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-telescope/telescope.nvim" },
    opts = {
      -- refer to the configuration section below
      -- or leave empty for defaults
    },
  },

  -- TODO comments
  {
    "folke/todo-comments.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = require "configs.todo-comments",
  },

  -- undo tree
  { "mbbill/undotree", event = "VeryLazy" },
}
