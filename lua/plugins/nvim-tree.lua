return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local tree = require("nvim-tree")
    tree.setup({
      view = {
        width = 55,
       side = "right",
      },
      renderer = {
        icons = {
          git_placement = "signcolumn",
          show = {
            file = true,
            folder = true,
            folder_arrow = false,
            git = true,
          },
        },
      },
    })
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
  end,
}
