local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local option = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities
  }
}

return option
