return {

	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver", "cssls", "tailwindcss" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilites = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilites = capabilities,
			})
			lspconfig.cssls.setup({
				capabilites = capabilities,
			})
			lspconfig.tailwindcss.setup({
				capabilites = capabilities,
			})
			lspconfig.emmet_language_server.setup({
				capabilites = capabilities,
			})
			lspconfig.rust_analyzer.setup({
				capabilites = capabilities,
				root_dir = lspconfig.util.root_pattern("Cargo.toml", "rust-project.json"),
        cmd = { "rust-analyzer" },
			})

			vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gi", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
