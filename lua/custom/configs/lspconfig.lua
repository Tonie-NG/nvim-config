local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

-- lspconfig.rubylsp.setup ({
-- 	on_attach = on_attach,
-- 	capabilities = capabilities,
-- })
--
--
lspconfig.gleam.setup ({
  on_attach = on_attach,
  capabilities = capabilities,
	cmd = { "gleam", "lsp" },
  filetypes = { "gleam" },
  root_dir = util.root_pattern("gleam.toml", ".git")
})

lspconfig.astro.setup ({
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = { "astro-ls", "--stdio" },
	filetypes = { "astro" },
	init_options = {
		typescript = {},
	},
	root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")
})

lspconfig.tsserver.setup ({
	on_attach = on_attach,
	capabilities = capabilities,
	init_options = {
		preferences = {
			disableSuggestions = true,
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

lspconfig.cssls.setup ({
	on_attach = on_attach,
	capabilities = capabilities,
	single_file_support = true
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

lspconfig.html.setup ({
	on_attach = on_attach,
	capabilities = capabilities,
	single_file_support = true
})

lspconfig.pyright.setup ({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})
