return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- Load Catppuccin theme palette function
		local catppuccin_theme = function(flavour)
			local C = require("catppuccin.palettes").get_palette(flavour)
			local O = require("catppuccin").options
			local catppuccin = {}

			local transparent_bg = O.transparent_background and "NONE" or C.mantle

			catppuccin.normal = {
				a = { bg = C.blue, fg = C.mantle, gui = "bold" },
				b = { bg = C.surface0, fg = C.blue },
				c = { bg = transparent_bg, fg = C.text },
			}

			catppuccin.insert = {
				a = { bg = C.green, fg = C.base, gui = "bold" },
				b = { bg = C.surface0, fg = C.green },
			}

			catppuccin.terminal = {
				a = { bg = C.green, fg = C.base, gui = "bold" },
				b = { bg = C.surface0, fg = C.green },
			}

			catppuccin.command = {
				a = { bg = C.peach, fg = C.base, gui = "bold" },
				b = { bg = C.surface0, fg = C.peach },
			}

			catppuccin.visual = {
				a = { bg = C.mauve, fg = C.base, gui = "bold" },
				b = { bg = C.surface0, fg = C.mauve },
			}

			catppuccin.replace = {
				a = { bg = C.red, fg = C.base, gui = "bold" },
				b = { bg = C.surface0, fg = C.red },
			}

			catppuccin.inactive = {
				a = { bg = transparent_bg, fg = C.blue },
				b = { bg = transparent_bg, fg = C.surface1, gui = "bold" },
				c = { bg = transparent_bg, fg = C.overlay0 },
			}

			return catppuccin
		end

		-- Set the flavour you want
		local flavour = "macchiato" -- Change to your preferred flavour

		-- Setup lualine with the custom catppuccin theme
		require("lualine").setup({
			options = {
				theme = catppuccin_theme(flavour), -- Use the provided function
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},
		})
	end,
}

