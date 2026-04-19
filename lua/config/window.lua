-- Cambiar el fondo de ventanas flotantes
vim.api.nvim_set_hl(0, "NormalFloat", {
	bg = "#1e1e2e", -- Color de fondo oscuro pero no negro puro
	-- O para fondo transparente: bg = "NONE"
})
vim.api.nvim_set_hl(0, "FloatBorder", {
	bg = "#1e1e2e",
	fg = "#c0caf5",
})
