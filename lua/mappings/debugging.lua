local map = vim.keymap.set
local del = vim.keymap.del

map("n", "<leader>do", function()
	require("dapui").open()
end, { desc = "Dap UI Open", noremap = true, silent = true })

map("n", "<leader>dx", function()
	require("dapui").close({ terminateDebuggee = true })
end, { desc = "Dap UI Close", noremap = true, silent = true })

map("n", "<leader>dp", "<cmd>DapToggleBreakpoint<CR>", { desc = "Debug Toggle Breakpoint" })

map("n", "<leader>dc", "<cmd>DapClearBreakpoints<CR>", { desc = "Clear Debug Breakpoints" })

map("n", "<leader>db", "<cmd>DapContinue<CR>", { desc = "Debug" })

map("n", "<leader>dj", "<cmd>DapStepOver<CR>", { desc = "Debug Step Over" })

map("n", "<leader>dl", "<cmd>DapStepInto<CR>", { desc = "Debug Step Into" })

map("n", "<leader>dh", "<cmd>DapStepOut<CR>", { desc = "Debug Step Out" })

-- vscode debugging shortcuts
map("n", "<F5>", "<cmd>DapContinue<CR>", { desc = "Debug Continue" })

map("n", "<F10>", "<cmd>DapStepOver<CR>", { desc = "Debug Step Over" })

map("n", "<F11>", "<cmd>DapStepInto<CR>", { desc = "Debug Step Into" })

map("n", "<F12>", "<cmd>DapStepOut<CR>", { desc = "Debug Step Out" })

map("n", "<S-F5>", "<cmd>DapTerminate<CR>", { desc = "Debug Terminate" })

map("n", "<SC-F5>", function()
	require("dap").restart({ terminateDebuggee = false })
end, { desc = "Debug Restart" })
