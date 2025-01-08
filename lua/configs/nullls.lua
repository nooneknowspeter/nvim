local mason = require "mason"
mason.setup()

require("mason-null-ls").setup {
  ensure_installed = { "stylua" },
  automatic_installation = true,
  automatic_setup = true,
}
