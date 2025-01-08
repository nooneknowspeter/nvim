-- mason setup
require("mason").setup()
require("mason-lspconfig").setup()

-- mason lspconfig setup
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls" }, -- lsp servers to auto-install
}

-- mason lspconfig setup
require("mason-lspconfig").setup_handlers {
  function(server_name)
    require("lspconfig")[server_name].setup {}
  end,

  ["lua_ls"] = function()
    local lspconfig = require "lspconfig"
    lspconfig.lua_ls.setup {
      settings = {
        Lua = {
          diagostics = {
            globals = { "vim" },
          },
        },
      },
    }
  end,
}
