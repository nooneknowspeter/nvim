return {
  {
    "quarto-dev/quarto-nvim",
    enabled = false,
    event = "VeryLazy",
    dependencies = {
      "jmbuhr/otter.nvim",
      "nvim-treesitter/nvim-treesitter",
      {
        "benlubas/molten-nvim",
        version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
        build = ":UpdateRemotePlugins",
        init = function()
          vim.g.molten_output_win_max_height = 12
          vim.g.molten_auto_open_output = false
          vim.g.molten_image_provider = "image.nvim"
          vim.g.molten_wrap_output = true
          vim.g.molten_virt_text_output = true
          vim.g.molten_virt_lines_off_by_1 = true
          vim.g.molten_output_win_max_height = 20
        end,
      },
      {
        "GCBallesteros/jupytext.nvim",
        config = true,
        lazy = false,
      },
    },
  },
}
