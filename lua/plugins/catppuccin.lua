return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      integrations = {
        cmp = true,
        nvimtree = true,
        treesitter = true,
        harpoon = true,
        telescope = {
    enabled = true,
},
        lsp_trouble = true,
      },
    })
    vim.cmd([[
            colorscheme catppuccin-macchiato
        ]])
  end,
}
