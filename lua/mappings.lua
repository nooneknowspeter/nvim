require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true })
