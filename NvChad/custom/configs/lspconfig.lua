local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- Servers table:
--  keys: lsp servers
--  values: settings
local servers = {
  html = {},
  cssls = {},
  tsserver = {},
  clangd = {},
  rust_analyzer = {
    ["rust-analyzer"] = {
      diagnostics = { enable = true },
      imports = {
        granularity = {
          group = "module",
        },
        prefix = "self",
      },
      cargo = { buildScripts = { enable = true } },
      procMacro = { enable = true },
      checkOnSave = { command = "clippy" },
    },
  },
  tailwindcss = {},
  pyright = {},
  bashls = {},
}

for lsp, lsp_settings in pairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_settings,
  }
end
