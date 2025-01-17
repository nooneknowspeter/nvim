return {
  -- messages
  {
    "AckslD/messages.nvim",
    enabled = true,
    event = "VeryLazy",
    config = function()
      require "configs.messages"
    end,
  },
}
