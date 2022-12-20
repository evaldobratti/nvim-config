-- unused since mason update

local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
  }

  -- print(opts.cmd)
  --if server.name == "elixirls" then
  --  opts.cmd = { "/Users/user/.local/share/nvim/lsp_servers/elixir/elixir-ls/language_server.sh" }
  --end
  --
  -- if server.name == "tsserver" then
  --   opts.cmd = { "/Users/user/.asdf/installs/nodejs/16.13.2/bin/node /Users/user/.local/share/nvim/lsp_servers/tsserver/node_modules/typescript-language-server/lib/cli.js",
  --     "--stdio" }
  -- end

  server:setup(opts)
end)
