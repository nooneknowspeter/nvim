-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "chadracula-evondev",
  transparency = true,

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {

    " ▄▀▀▄ ▀▄  ▄▀▀▀▀▄   ▄▀▀▀▀▄   ▄▀▀▄ ▀▄  ▄▀▀█▄▄▄▄ ",
    "█  █ █ █ █      █ █      █ █  █ █ █ ▐  ▄▀   ▐ ",
    "▐  █  ▀█ █      █ █      █ ▐  █  ▀█   █▄▄▄▄▄  ",
    "  █   █  ▀▄    ▄▀ ▀▄    ▄▀   █   █    █    ▌  ",
    "▄▀   █     ▀▀▀▀     ▀▀▀▀   ▄▀   █    ▄▀▄▄▄▄   ",
    "█    ▐                     █    ▐    █    ▐   ",
    "▐                          ▐         ▐        ",
    "                                              ",
    "                                              ",
    "    people fear what they don't understand    ",
  },
}

M.ui = {
  statusline = {
    -- default/vscode/vscode_colored/minimal
    theme = "vscode_colored",
    separator_style = "default",
    order = nil,
    modules = nil,
  },
}

M.cheetsheet = {
  theme = "simple", -- simple/grid
}

return M
