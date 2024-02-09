local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

local option = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
		root_dir = util.root_pattern("Cargo.toml"),
		single_file_support = true,
  }
}

return option
