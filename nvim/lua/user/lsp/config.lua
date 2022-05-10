-- Language servers
local servers = { "sumneko_lua", "pyright", "bashls", "clangd", "rust_analyzer" }

-- Options
require("nvim-lsp-installer").setup({
  ensure_installed = servers,
  automatic_installation = false,
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    }
  }
})

-- Automatically install servers specified
for _, server in ipairs(servers) do
  require('lspconfig')[server].setup {}
end
