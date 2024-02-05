return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		-- dont show command in command line
		vim.keymap.set(
			"n",
			"<leader>e",
			":Neotree filesystem focus left<CR>",
			{ noremap = true, silent = true, desc = "Toggle file tree" }
		)
	end,
}
