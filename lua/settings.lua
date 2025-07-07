-- settings.lua
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true

require("nvim-treesitter.configs").setup({
  ensure_installed = { "haskell", "lua", "bash", "vim", "markdown" }, -- poné lo que uses
  highlight = {
    enable = true, -- Activa resaltado
    additional_vim_regex_highlighting = false,
  },
})

