local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.gleam.setup ({
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {"glas", "--stdio"},
    filetypes = { "gleam" },
    root_dir = util.root_pattern("gleam.toml"),
    single_file_support = true
})

lspconfig.tsserver.setup ({
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true
    }
  }
})

lspconfig.gopls.setup ({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true
      }
    }
  }
})

lspconfig.clangd.setup ({
  on_attach = function (client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities
})

lspconfig.pylsp.setup ({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
  plugins = {
    pydocstyle = {
      enabled = false
    },
    pylint = {
      enabled = true,
    },
    rope_autoimport = {
      enabled = true,
      memory = true
    }
  }
})
