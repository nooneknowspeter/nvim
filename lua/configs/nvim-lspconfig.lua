local lspconfig = require("lspconfig")

capabilities = require('blink.cmp').get_lsp_capabilities({
  textDocument = {
    completion = {
      completionItem = {
        snippetSupport = false }
    }
  },

  workspace = {
    didChangeWatchedFiles = {
      dynamicRegistration = true,
    },
  },
})
