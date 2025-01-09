local notify = require "notify"

notify.setup {
  stages = "fade",               -- animation style for notifications
  timeout = 3000,                -- default timeout for notifications
  background_colour = "#FFFFFF", -- customize the background color
  render = "default",            -- render method, options: minimal, compact, etc.
  -- max_width = 80,                -- maximum width of notifications
  -- max_height = 20,               -- maximum height of notifications
}

-- use notify as the default for :messages
vim.notify = notify
