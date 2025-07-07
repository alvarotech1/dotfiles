-- init.lua
vim.g.mapleader = " "

require("plugins")
require("settings")
require("lsp")
require("keymaps")

vim.cmd.colorscheme("tokyonight")
