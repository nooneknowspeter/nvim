local notify = require "notify"

notify.setup {
  stages = "fade",               -- animation style for notifications
  timeout = 3000,                -- default timeout for notifications
  background_colour = "#FFFFFF", -- customize the background color
  render = "wrapped-compact",    -- render method, options: minimal, compact, etc.
  max_width = 32,                -- maximum width of notifications
  max_height = 16,               -- maximum height of notifications
  top_down = true,
}

-- use notify as the default for :messages
vim.notify = notify
