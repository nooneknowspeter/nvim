local map = vim.keymap.set
local del = vim.keymap.del
map("n", "<C-n>", ":Neotree toggle<CR>", { desc = "neo-tree toggle window" })

map("n", "<leader>bf", ":Neotree buffers reveal float<CR>", { desc = "neo-tree reveal float" })
