return {
  -- formatting and linting; null ls
  {
    "nvimtools/none-ls.nvim",
    enabled = true,
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
}
