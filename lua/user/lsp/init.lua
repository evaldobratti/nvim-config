require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers {
  function(server_name)
    require("lspconfig")[server_name].setup {
      on_attach = require("user.lsp.handlers").on_attach,
      capabilities = require("user.lsp.handlers").capabilities,
    }
  end,
}

require("user.lsp.handlers").setup()
