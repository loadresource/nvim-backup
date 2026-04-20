-- ~/.config/nvim/lua/fcc/colors/fcc-light.lua
-- Tema claro basado en freeCodeCamp

local colors = {
	-- Pares de grises (invertidos respecto al tema oscuro)
	gray00 = "#0a0a23", -- texto principal (oscuro)
	gray90 = "#ffffff", -- fondo principal (claro)
	gray05 = "#1b1b32", -- texto secundario
	gray85 = "#f5f6f7", -- fondo secundario
	gray10 = "#2a2a40",
	gray80 = "#dfdfe2",
	gray15 = "#3b3b4f",
	gray75 = "#d0d0d5",

	-- Acentos (usamos los secundarios para contraste sobre fondo claro)
	purple = "#5a01a7", -- dark_purple
	yellow = "#4d3800", -- dark_yellow
	blue = "#002ead", -- dark_blue
	light_green = "#00471b", -- dark_green

	-- Mantenemos los nombres originales para que el código sea intercambiable
	dark_purple = "#dbb8ff", -- el primario queda como secundario
	dark_yellow = "#f1be32",
	dark_blue = "#99c9ff",
	dark_green = "#acd157",
}

-- Terminal colors (adaptados)
vim.g.terminal_color_0 = colors.gray05
vim.g.terminal_color_1 = colors.dark_purple
vim.g.terminal_color_2 = colors.dark_green
vim.g.terminal_color_3 = colors.dark_yellow
vim.g.terminal_color_4 = colors.dark_blue
vim.g.terminal_color_5 = colors.purple
vim.g.terminal_color_6 = colors.blue
vim.g.terminal_color_7 = colors.gray90
vim.g.terminal_color_8 = colors.gray15
vim.g.terminal_color_9 = colors.dark_purple
vim.g.terminal_color_10 = colors.light_green
vim.g.terminal_color_11 = colors.yellow
vim.g.terminal_color_12 = colors.blue
vim.g.terminal_color_13 = colors.purple
vim.g.terminal_color_14 = colors.blue
vim.g.terminal_color_15 = colors.gray85

local highlights = {
	-- UI base
	Normal = { fg = colors.gray00, bg = colors.gray90 },
	NormalFloat = { fg = colors.gray00, bg = colors.gray85 },
	FloatBorder = { fg = colors.gray15, bg = colors.gray85 },
	Cursor = { reverse = true },
	CursorLine = { bg = colors.gray85 },
	CursorColumn = { bg = colors.gray85 },
	ColorColumn = { bg = colors.gray80 },
	LineNr = { fg = colors.gray15 },
	CursorLineNr = { fg = colors.yellow, bold = true },
	SignColumn = { bg = colors.gray90 },

	TabLine = { fg = colors.gray10, bg = colors.gray85 },
	TabLineSel = { fg = colors.gray00, bg = colors.gray90, bold = true },
	TabLineFill = { bg = colors.gray85 },
	StatusLine = { fg = colors.gray00, bg = colors.gray80 },
	StatusLineNC = { fg = colors.gray15, bg = colors.gray85 },

	Pmenu = { fg = colors.gray00, bg = colors.gray85 },
	PmenuSel = { fg = colors.gray90, bg = colors.purple },
	PmenuSbar = { bg = colors.gray80 },
	PmenuThumb = { bg = colors.gray15 },
	WildMenu = { fg = colors.gray90, bg = colors.yellow },

	Search = { fg = colors.gray90, bg = colors.yellow },
	IncSearch = { fg = colors.gray90, bg = colors.light_green },
	Visual = { bg = colors.gray80 },
	VisualNOS = { bg = colors.gray80 },

	ErrorMsg = { fg = colors.gray90, bg = colors.dark_purple },
	WarningMsg = { fg = colors.gray90, bg = colors.dark_yellow },
	ModeMsg = { fg = colors.gray00, bold = true },
	Question = { fg = colors.blue },

	DiagnosticError = { fg = colors.dark_purple },
	DiagnosticWarn = { fg = colors.dark_yellow },
	DiagnosticInfo = { fg = colors.blue },
	DiagnosticHint = { fg = colors.light_green },
	DiagnosticUnderlineError = { sp = colors.dark_purple, undercurl = true },
	DiagnosticUnderlineWarn = { sp = colors.dark_yellow, undercurl = true },
	DiagnosticUnderlineInfo = { sp = colors.blue, undercurl = true },
	DiagnosticUnderlineHint = { sp = colors.light_green, undercurl = true },

	DiffAdd = { bg = colors.dark_green, fg = colors.light_green },
	DiffChange = { bg = colors.gray80 },
	DiffDelete = { fg = colors.dark_purple, bg = colors.gray85 },
	DiffText = { bg = colors.dark_blue, fg = colors.blue },

	Comment = { fg = colors.gray15, italic = true },
	Constant = { fg = colors.yellow },
	String = { fg = colors.light_green },
	Character = { fg = colors.light_green },
	Number = { fg = colors.yellow },
	Boolean = { fg = colors.yellow },
	Float = { fg = colors.yellow },
	Identifier = { fg = colors.blue },
	Function = { fg = colors.blue },
	Statement = { fg = colors.purple, bold = true },
	Conditional = { fg = colors.purple },
	Repeat = { fg = colors.purple },
	Label = { fg = colors.purple },
	Operator = { fg = colors.gray00 },
	Keyword = { fg = colors.purple },
	Exception = { fg = colors.purple },
	PreProc = { fg = colors.yellow },
	Include = { fg = colors.purple },
	Define = { fg = colors.purple },
	Macro = { fg = colors.yellow },
	PreCondit = { fg = colors.yellow },
	Type = { fg = colors.light_green },
	StorageClass = { fg = colors.yellow },
	Structure = { fg = colors.yellow },
	Typedef = { fg = colors.yellow },
	Special = { fg = colors.blue },
	SpecialChar = { fg = colors.purple },
	Tag = { fg = colors.blue },
	Delimiter = { fg = colors.gray10 },
	SpecialComment = { fg = colors.gray15 },
	Debug = { fg = colors.dark_purple },
}

-- Aplicar
for group, spec in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, spec)
end

vim.cmd("hi Terminal guibg=" .. colors.gray90)
