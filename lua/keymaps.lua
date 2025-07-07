-- Establecer <leader> como espacio (asegúrate de tener esto en init.lua también)
vim.g.mapleader = " "

-- Opciones comunes para todos los atajos
local opts = { noremap = true, silent = true }

---------------------------------------------------
-- 📂 Archivos / Explorador
---------------------------------------------------
vim.keymap.set("n", "<leader>e", function()
  require("nvim-tree.api").tree.toggle({ focus = true })
end, opts)

---------------------------------------------------
-- 🔍 Búsqueda (Telescope)
---------------------------------------------------
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)     -- Buscar archivos
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", opts)      -- Buscar texto en archivos
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", opts)        -- Buscar buffers abiertos
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", opts)      -- Buscar ayuda

---------------------------------------------------
-- 🧠 LSP (Lenguaje)
---------------------------------------------------
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)                  -- Ir a definición
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)                        -- Mostrar documentación
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)              -- Renombrar símbolo
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)         -- Ver acciones disponibles
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, opts)  -- Formatear archivo

---------------------------------------------------
-- ❗ Diagnósticos
---------------------------------------------------
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)        -- Ver diagnóstico de línea
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)                -- Diagnóstico anterior
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)                -- Diagnóstico siguiente

---------------------------------------------------
-- 🧭 Navegación / Ventanas
---------------------------------------------------
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)                              -- Mover a ventana izquierda
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)                              -- Mover a derecha
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)                              -- Mover abajo
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)                              -- Mover arriba

---------------------------------------------------
-- 🗂️ Buffers
---------------------------------------------------
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", opts)                    -- Siguiente buffer
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", opts)                -- Buffer anterior
vim.keymap.set("n", "<leader>bd", ":bd<CR>", opts)                       -- Cerrar buffer

---------------------------------------------------
-- ✂️ Edición útil
---------------------------------------------------
vim.keymap.set("n", "<leader>qq", ":q!<CR>", opts)                       -- Salir sin guardar
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)                         -- Guardar archivo
vim.keymap.set("n", "<leader>x", ":x<CR>", opts)                         -- Guardar y salir

---------------------------------------------------
-- Tabulaciones de ventana
---------------------------------------------------

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", opts)     -- Nueva pestaña vacía
vim.keymap.set("n", "<leader>to", ":tabonly<CR>", opts)    -- Cerrar todas menos esta
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", opts)   -- Cerrar pestaña actual
vim.keymap.set("n", "<leader>tp", ":tabprevious<CR>", opts)-- Pestaña anterior
vim.keymap.set("n", "<leader>tn", ":tabnext<CR>", opts)    -- Pestaña siguiente
