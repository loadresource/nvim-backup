-- Se declara la variable opt para "mapear" vim.opt
local opt = vim.opt
opt.conceallevel = 2
opt.encoding = "utf-8"
--
opt.relativenumber = true
-- Compartir el portapapeles del sistema
vim.opt.clipboard = "unnamedplus"
vim.opt.showmode = false -- Ocultar el indicador de modo por defecto (-- INSERT --, etc.)
