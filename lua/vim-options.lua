vim.g.mapleader = " "

vim.cmd("set noshowmode")
vim.o.scrolloff = 15
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- cmp max options
vim.cmd("set pumheight=7")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.opt.fillchars = { eob = " " }
vim.cmd("set cursorline")

vim.o.background = "dark" -- or "light" for light mode

vim.opt.pumblend = 10

-- Just some quick save options
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true, desc = "Save" })
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = true, desc = "Save and quit" })
