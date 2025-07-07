-- keymaps.lua
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true })
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

