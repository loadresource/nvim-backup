-- Se declara la variable opt para "mapear" vim.opt
local opt = vim.opt
opt.conceallevel = 2
opt.encoding = "utf-8"
--
opt.relativenumber = true
-- Compartir el portapapeles del sistema
vim.opt.clipboard = "unnamedplus"
vim.opt.showmode = false -- Ocultar el indicador de modo por defecto (-- INSERT --, etc.)
--themes
vim.cmd.colorscheme("fcc")
--truecolors
vim.opt.termguicolors = true
vim.opt.showmode = false

--mouse
vim.opt.mouse = "a" -- Habilita el ratón en modo Normal, Visual, Insert y Command-line
vim.opt.mousemodel = "popup" -- Menú contextual con clic derecho
vim.opt.mousefocus = true -- Foco sigue al ratón al pasar por encima de ventanas
vim.opt.mousetime = 500 -- Tiempo (ms) para detectar doble clic

--
vim.api.nvim_create_user_command("Dark", function()
	vim.cmd.colorscheme("fcc")
end, {})
vim.api.nvim_create_user_command("Light", function()
	vim.cmd.colorscheme("fcc-light")
end, {})
