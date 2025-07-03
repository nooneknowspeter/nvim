require("fine-cmdline").setup {
  cmdline = {
    enable_keymaps = true,
    smart_history = true,
  },
}

vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })
