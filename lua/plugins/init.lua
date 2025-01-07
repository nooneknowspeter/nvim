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
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- lua json
  {
    "Joakker/lua-json5",
    event = "VeryLazy",
    lazy = true,
    build = vim.fn.has "win32" == 1 and "powershell ./install.ps1" or "./install.sh",
  },

  -- markdown previewer
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
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

  -- neovim lsp
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- nvim treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    opts = require "configs.treesitter",
  },

  -- debugging
  -- nvim dap, dap ui
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

  -- nvim python
  {

    "mfussenegger/nvim-dap-python",
    event = "VeryLazy",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      local mason_registry = require "mason-registry"

      require("dap-python").setup(mason_registry.get_package("debugpy"):get_install_path() .. "/venv/bin/python")
    end,
  },

  -- nvim lint
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.lsplint"
    end,
  },

  -- nvim surround
  {
    "kylechui/nvim-surround",
    version = "*", -- use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require "configs.nvimsurround"
    end,
  },

  -- plenery
  {
    "nvim-lua/plenary.nvim",
  },
}
