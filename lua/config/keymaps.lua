-- Definir líderes (ya lo tienes, pero lo reafirmamos)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Función auxiliar para mapear teclas con descripción (which-key las usará)
local function map(mode, lhs, rhs, desc)
	vim.keymap.set(mode, lhs, rhs, { desc = desc })
end

-- ============================================================
-- 🗺️  MAPEOS GENERALES (sin prefijo)
-- ============================================================

-- Salir del modo terminal más fácil
map("t", "<Esc>", "<C-\\><C-n>", "Salir del modo terminal")

-- Mover líneas seleccionadas hacia arriba/abajo
map("v", "J", ":m '>+1<CR>gv=gv", "Mover línea abajo")
map("v", "K", ":m '<-2<CR>gv=gv", "Mover línea arriba")

-- Mantener el cursor en el centro al navegar
map("n", "<C-d>", "<C-d>zz", "Scroll hacia abajo centrando")
map("n", "<C-u>", "<C-u>zz", "Scroll hacia arriba centrando")
map("n", "n", "nzzzv", "Siguiente búsqueda centrada")
map("n", "N", "Nzzzv", "Anterior búsqueda centrada")

-- Pegar sin sobrescribir el registro
map("v", "p", '"_dP', "Pegar sin perder registro")

-- ============================================================
-- 🧭  EXPLORADOR DE ARCHIVOS (nvim-tree)
-- ============================================================
map("n", "<leader>e", ":NvimTreeToggle<CR>", "Abrir/Cerrar explorador")
map("n", "<leader>E", ":NvimTreeFindFile<CR>", "Mostrar archivo actual en explorador")

-- ============================================================
-- 🔍  BÚSQUEDA Y ARCHIVOS (si añades Telescope)
-- ============================================================
-- (Descomenta si instalas Telescope)
-- map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", "Buscar archivos")
-- map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", "Buscar texto")
-- map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", "Listar buffers")

-- ============================================================
-- 💡  LSP (Servidores de lenguaje)
-- ============================================================
map("n", "gd", vim.lsp.buf.definition, "Ir a definición")
map("n", "gD", vim.lsp.buf.declaration, "Ir a declaración")
map("n", "gr", vim.lsp.buf.references, "Listar referencias")
map("n", "gi", vim.lsp.buf.implementation, "Ir a implementación")
map("n", "K", vim.lsp.buf.hover, "Mostrar información del símbolo")
map("n", "<C-k>", vim.lsp.buf.signature_help, "Mostrar firma de función")
map("n", "<leader>rn", vim.lsp.buf.rename, "Renombrar símbolo")
map("n", "<leader>ca", vim.lsp.buf.code_action, "Acciones de código")
map("n", "<leader>f", vim.lsp.buf.format, "Formatear buffer (LSP)")

-- Diagnósticos
map("n", "[d", vim.diagnostic.goto_prev, "Ir al diagnóstico anterior")
map("n", "]d", vim.diagnostic.goto_next, "Ir al diagnóstico siguiente")
map("n", "<leader>e", vim.diagnostic.open_float, "Mostrar diagnóstico en ventana flotante")
map("n", "<leader>q", vim.diagnostic.setloclist, "Enviar diagnósticos a lista local")

-- ============================================================
-- 🎨  FORMATEO (conform.nvim)
-- ============================================================
-- El atajo <leader>f ya está definido en formatting.lua, pero lo reafirmamos
map({ "n", "v" }, "<leader>F", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, "Formatear buffer/selección (conform)")

-- ============================================================
-- 🧩  AUTOCOMPLETADO (nvim-cmp)
-- ============================================================
-- Los atajos de cmp se definen dentro de su configuración (cmp.lua)
-- Normalmente se usan <Tab>, <S-Tab>, <CR>, <C-Space>, etc.
-- No es necesario repetirlos aquí.

-- ============================================================
-- 🪟  VENTANAS Y PESTAÑAS
-- ============================================================
map("n", "<leader>sv", "<C-w>v", "Dividir verticalmente")
map("n", "<leader>sh", "<C-w>s", "Dividir horizontalmente")
map("n", "<leader>se", "<C-w>=", "Igualar tamaño de ventanas")
map("n", "<leader>sx", ":close<CR>", "Cerrar ventana actual")

map("n", "<leader>to", ":tabnew<CR>", "Abrir nueva pestaña")
map("n", "<leader>tx", ":tabclose<CR>", "Cerrar pestaña actual")
map("n", "<leader>tn", ":tabn<CR>", "Ir a pestaña siguiente")
map("n", "<leader>tp", ":tabp<CR>", "Ir a pestaña anterior")

-- ============================================================
-- 🧰  PLUGINS ADICIONALES (opcional)
-- ============================================================
-- Si instalas gitsigns, telescope, etc., añade aquí sus atajos.
