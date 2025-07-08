return {
  {
    "mg979/vim-visual-multi",
    enabled = false,
    lazy = false,
    init = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-m>",
        ["Find Subword Under"] = "<C-m>",
      }
    end,
  },
}
