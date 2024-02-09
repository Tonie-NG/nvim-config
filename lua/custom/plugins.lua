local plugins = {
  {
    "wakatime/vim-wakatime",
		lazy = false
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
	{
		"jose-elias-alvarez/null-ls.nvim",
		event = "VeryLazy",
		opts = function ()
			return require "custom.configs.null-ls"
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"gleam",
				"gopls",
				"gofumpt",
				"goimports-reviser",
				"clangd",
				"rust-analyzer",
				"clang-format",
				"pyright",
				"typescript-language-server",
				"sqlls",
				"astro-language-server",
				"css-lsp",
				"html-lsp",
				"cssmodules-language-server",
			}
		}
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function (_, opts)
      require("rust-tools").setup(opts)
    end
  }
}

return plugins
