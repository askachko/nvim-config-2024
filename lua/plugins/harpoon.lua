return {
  "ThePrimeagen/harpoon",
  config = function()
    require("telescope").load_extension("harpoon")

    vim.keymap.set("n", "<leader>fm", ":Telescope harpoon marks<CR>", {})

    local mark = require("harpoon.mark")
    vim.keymap.set("n", "<leader>mf", mark.add_file, {})

    local ui = require("harpoon.ui")
    vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu, {})
    vim.keymap.set("n", "<S-k>", ui.nav_prev, {})
    vim.keymap.set("n", "<S-j>", ui.nav_next, {})

    require("harpoon").setup({
      global_settings = {
        save_on_toggle = false,
        save_on_change = true,
        mark_branch = true,
      },
    })

  end,
}
