local map = vim.keymap.set
local del = vim.keymap.del

map("n", "<leader>t", ":TestNearest<CR>", {})

map("n", "<leader>T", ":TestFile<CR>", {})

map("n", "<leader>a", ":TestSuite<CR>", {})

map("n", "<leader>l", ":TestLast<CR>", {})

map("n", "<leader>g", ":TestVisit<CR>", {})

vim.cmd("let test#strategy = 'vimux'")
