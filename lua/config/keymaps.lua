-- ~/.config/nvim/lua/config/keymaps.lua

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
-- 🔍  BÚSQUEDA Y ARCHIVOS (Telescope - opcional)
-- ============================================================
-- Descomenta si instalas Telescope
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
map("n", "<leader>ld", vim.diagnostic.open_float, "Mostrar diagnóstico en ventana flotante") -- cambiado de <leader>e a <leader>ld
map("n", "<leader>lq", vim.diagnostic.setloclist, "Enviar diagnósticos a lista local") -- cambiado de <leader>q a <leader>lq para mantener contexto LSP

-- ============================================================
-- 🎨  FORMATEO (conform.nvim)
-- ============================================================
map({ "n", "v" }, "<leader>F", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, "Formatear buffer/selección (conform)")

-- ============================================================
-- 🧩  AUTOCOMPLETADO (nvim-cmp)
-- ============================================================
-- Los atajos de cmp se definen dentro de su configuración (cmp.lua)
-- Normalmente se usan <Tab>, <S-Tab>, <CR>, <C-Space>, etc.

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
-- 🧰  PLUGINS ADICIONALES
-- ============================================================
-- lazygit.nvim ya define su propio atajo <leader>gg en su archivo de plugin.
-- Si prefieres definirlo aquí, puedes hacerlo (pero asegúrate de no duplicarlo).
-- map("n", "<leader>gg", "<cmd>LazyGit<CR>", "Abrir LazyGit")

-- Gitsigns (si se instala)
-- map("n", "<leader>hs", ":Gitsigns stage_hunk<CR>", "Stage hunk")
-- map("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", "Reset hunk")
-- map("n", "<leader>hp", ":Gitsigns preview_hunk<CR>", "Preview hunk")
-- map("n", "<leader>hb", ":Gitsigns blame_line<CR>", "Blame line")
--
---- oil.nvim: Abrir el directorio padre del archivo actual (estilo vim-vinegar)
map("n", "-", "<CMD>Oil<CR>", "Abrir directorio padre")

--bufferline
map("n", "<A-,>", "<cmd>BufferLineCyclePrev<CR>", "Pestaña anterior")
map("n", "<A-.>", "<cmd>BufferLineCycleNext<CR>", "Pestaña siguiente")
map("n", "<A-w>", "<cmd>bd<CR>", "Cerrar pestaña actual")

-- Mover la línea actual hacia abajo (Alt + j)
map("n", "<A-j>", ":m .+1<CR>==", "Mover línea abajo")

-- Mover la línea actual hacia arriba (Alt + k)
map("n", "<A-k>", ":m .-2<CR>==", "Mover línea arriba")
-- Duplicar línea hacia abajo (Shift + Alt + j)
map("n", "<A-S-j>", ":t .<CR>", "Duplicar línea abajo")

-- Duplicar línea hacia arriba (Shift + Alt + k)
map("n", "<A-S-k>", ":t -1<CR>", "Duplicar línea arriba")
