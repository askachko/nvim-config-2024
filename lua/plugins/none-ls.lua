return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
 --       require("none-ls.diagnostics.eslint_d"),
 null_ls.builtins.formatting.biome,
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
			},
		})
		-- format on save
		vim.api.nvim_create_autocmd("BufWritePost", {
			pattern = "*",
			callback = function()
				vim.lsp.buf.format()
			end,
		})
	end,
}
