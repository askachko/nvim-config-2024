return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- Load the rose-pine palette
		local p = require("rose-pine.palette")

		-- Define your custom theme
		local custom_theme = {
			normal = {
				a = { bg = p.rose, fg = p.base, gui = "bold" },
				b = { bg = p.overlay, fg = p.rose },
				c = { bg = p.base, fg = p.text },
			},
			insert = {
				a = { bg = p.foam, fg = p.base, gui = "bold" },
				b = { bg = p.overlay, fg = p.foam },
				c = { bg = p.base, fg = p.text },
			},
			visual = {
				a = { bg = p.iris, fg = p.base, gui = "bold" },
				b = { bg = p.overlay, fg = p.iris },
				c = { bg = p.base, fg = p.text },
			},
			replace = {
				a = { bg = p.pine, fg = p.base, gui = "bold" },
				b = { bg = p.overlay, fg = p.pine },
				c = { bg = p.base, fg = p.text },
			},
			command = {
				a = { bg = p.love, fg = p.base, gui = "bold" },
				b = { bg = p.overlay, fg = p.love },
				c = { bg = p.base, fg = p.text },
			},
			inactive = {
				a = { bg = p.base, fg = p.muted, gui = "bold" },
				b = { bg = p.base, fg = p.muted },
				c = { bg = p.base, fg = p.muted },
			},
		}

		-- Setup lualine with the custom theme
		require("lualine").setup({
			options = {
				theme = custom_theme, -- Apply the custom theme here
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},
		})
	end,
}
