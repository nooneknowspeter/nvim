-- mason setup
local mason = require "mason"
local mason_lsp = require("mason-lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

mason.setup()

mason_lsp.setup()

-- mason lspconfig setup
-- mason lspconfig setup
require("mason-lspconfig").setup_handlers {
  function(server_name)
    require("lspconfig")[server_name].setup {
      capabilities = capabilities,
    }
  end,

  ["lua_ls"] = function()
    local lspconfig = require "lspconfig"
    lspconfig.lua_ls.setup {
      capabilities = capabilities,
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
