local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
  local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}
  
  --if server.name == "elixirls" then
  --  opts.cmd = { "/Users/user/.local/share/nvim/lsp_servers/elixir/elixir-ls/language_server.sh" } 
  --end

  server:setup(opts)
end)
