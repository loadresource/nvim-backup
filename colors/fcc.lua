-- ~/.config/nvim/colors/fcc.lua
-- Tema basado en la guía de color de freeCodeCamp

local colors = {
	-- Pares de grises (fondo claro / texto oscuro por defecto)
	gray00 = "#ffffff",
	gray90 = "#0a0a23",
	gray05 = "#f5f6f7",
	gray85 = "#1b1b32",
	gray10 = "#dfdfe2",
	gray80 = "#2a2a40",
	gray15 = "#d0d0d5",
	gray75 = "#3b3b4f",

	-- Acentos primarios (para usar sobre fondos oscuros)
	purple = "#dbb8ff",
	yellow = "#f1be32",
	blue = "#99c9ff",
	light_green = "#acd157",

	-- Acentos secundarios (para usar sobre fondos claros)
	dark_purple = "#5a01a7",
	dark_yellow = "#4d3800",
	dark_blue = "#002ead",
	dark_green = "#00471b",
}

-- Establecer la paleta global de Neovim (requiere Neovim 0.10+)
vim.g.terminal_color_0 = colors.gray90
vim.g.terminal_color_1 = colors.dark_purple
vim.g.terminal_color_2 = colors.dark_green
vim.g.terminal_color_3 = colors.dark_yellow
vim.g.terminal_color_4 = colors.dark_blue
vim.g.terminal_color_5 = colors.purple
vim.g.terminal_color_6 = colors.blue
vim.g.terminal_color_7 = colors.gray00
vim.g.terminal_color_8 = colors.gray75
vim.g.terminal_color_9 = colors.dark_purple
vim.g.terminal_color_10 = colors.light_green
vim.g.terminal_color_11 = colors.yellow
vim.g.terminal_color_12 = colors.blue
vim.g.terminal_color_13 = colors.purple
vim.g.terminal_color_14 = colors.blue
vim.g.terminal_color_15 = colors.gray05

local highlights = {
	-- UI base (fondo principal = gray90, texto principal = gray00)
	Normal = { fg = colors.gray00, bg = colors.gray90 },
	NormalFloat = { fg = colors.gray00, bg = colors.gray85 },
	FloatBorder = { fg = colors.gray75, bg = colors.gray85 },
	Cursor = { reverse = true },
	CursorLine = { bg = colors.gray85 },
	CursorColumn = { bg = colors.gray85 },
	ColorColumn = { bg = colors.gray80 },
	LineNr = { fg = colors.gray75 },
	CursorLineNr = { fg = colors.yellow, bold = true },
	SignColumn = { bg = colors.gray90 },

	-- Pestañas y barra de estado
	TabLine = { fg = colors.gray15, bg = colors.gray85 },
	TabLineSel = { fg = colors.gray00, bg = colors.gray90, bold = true },
	TabLineFill = { bg = colors.gray85 },
	StatusLine = { fg = colors.gray00, bg = colors.gray80 },
	StatusLineNC = { fg = colors.gray75, bg = colors.gray85 },

	--breadcrumb
	WinBar = { fg = colors.gray00, bg = colors.gray85 },
	WinBarNC = { fg = colors.gray75, bg = colors.gray85 },

	-- Ventanas flotantes y menús
	Pmenu = { fg = colors.gray00, bg = colors.gray85 },
	PmenuSel = { fg = colors.gray90, bg = colors.purple },
	PmenuSbar = { bg = colors.gray80 },
	PmenuThumb = { bg = colors.gray75 },
	WildMenu = { fg = colors.gray90, bg = colors.yellow },

	-- Búsqueda y selección visual
	Search = { fg = colors.gray90, bg = colors.yellow },
	IncSearch = { fg = colors.gray90, bg = colors.light_green },
	Visual = { bg = colors.gray80 },
	VisualNOS = { bg = colors.gray80 },

	-- Mensajes y diagnósticos
	ErrorMsg = { fg = colors.gray00, bg = colors.dark_purple },
	WarningMsg = { fg = colors.gray90, bg = colors.dark_yellow },
	ModeMsg = { fg = colors.gray00, bold = true },
	Question = { fg = colors.blue },

	-- LSP / Diagnósticos
	DiagnosticError = { fg = colors.dark_purple },
	DiagnosticWarn = { fg = colors.dark_yellow },
	DiagnosticInfo = { fg = colors.blue },
	DiagnosticHint = { fg = colors.light_green },
	DiagnosticUnderlineError = { sp = colors.dark_purple, undercurl = true },
	DiagnosticUnderlineWarn = { sp = colors.dark_yellow, undercurl = true },
	DiagnosticUnderlineInfo = { sp = colors.blue, undercurl = true },
	DiagnosticUnderlineHint = { sp = colors.light_green, undercurl = true },

	-- Git signs
	DiffAdd = { bg = colors.dark_green, fg = colors.light_green },
	DiffChange = { bg = colors.gray80 },
	DiffDelete = { fg = colors.dark_purple, bg = colors.gray85 },
	DiffText = { bg = colors.dark_blue, fg = colors.blue },

	-- Sintaxis (grupos básicos)
	Comment = { fg = colors.gray75, italic = true },
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
	Delimiter = { fg = colors.gray15 },
	SpecialComment = { fg = colors.gray75 },
	Debug = { fg = colors.dark_purple },

	-- Tree-sitter (se mapean automáticamente desde los grupos estándar en Neovim 0.10+)
	-- pero puedes añadir grupos específicos si lo deseas.
}

-- Breadcrumbs (nvim-navic)
local navic_colors = {
	-- Texto genérico del breadcrumb
	NavicText = { fg = colors.gray00, bg = colors.gray85 },
	-- Separador (la flechita ">")
	NavicSeparator = { fg = colors.gray75 },
	-- Íconos y texto de cada tipo de símbolo
	NavicIconsFile = { fg = colors.blue },
	NavicIconsModule = { fg = colors.purple },
	NavicIconsNamespace = { fg = colors.purple },
	NavicIconsPackage = { fg = colors.purple },
	NavicIconsClass = { fg = colors.yellow },
	NavicIconsMethod = { fg = colors.blue },
	NavicIconsProperty = { fg = colors.blue },
	NavicIconsField = { fg = colors.blue },
	NavicIconsConstructor = { fg = colors.yellow },
	NavicIconsEnum = { fg = colors.yellow },
	NavicIconsInterface = { fg = colors.yellow },
	NavicIconsFunction = { fg = colors.blue },
	NavicIconsVariable = { fg = colors.light_green },
	NavicIconsConstant = { fg = colors.yellow },
	NavicIconsString = { fg = colors.light_green },
	NavicIconsNumber = { fg = colors.yellow },
	NavicIconsBoolean = { fg = colors.yellow },
	NavicIconsArray = { fg = colors.yellow },
	NavicIconsObject = { fg = colors.yellow },
	NavicIconsKey = { fg = colors.blue },
	NavicIconsNull = { fg = colors.gray75 },
	NavicIconsEnumMember = { fg = colors.light_green },
	NavicIconsStruct = { fg = colors.yellow },
	NavicIconsEvent = { fg = colors.yellow },
	NavicIconsOperator = { fg = colors.gray00 },
	NavicIconsTypeParameter = { fg = colors.light_green },
}

-- Mezclar con la tabla de highlights existente
for group, spec in pairs(navic_colors) do
	highlights[group] = spec
end

-- Grupos específicos para bufferline (sobrescriben TabLine)
local bufferline_colors = {
	BufferLineBackground = { fg = colors.gray75, bg = colors.gray90 },
	--	BufferLineBufferSelected = { fg = colors.gray00, bg = colors.gray80, bold = true },
	BufferLineBufferVisible = { fg = colors.gray00, bg = colors.gray85 },
	--BufferLineTabSelected = { fg = colors.gray00, bg = colors.gray80, bold = true },
	BufferLineTab = { fg = colors.gray75, bg = colors.gray90 },
	BufferLineFill = { bg = colors.gray90 },
	BufferLineSeparator = { fg = colors.gray75, bg = colors.gray90 },
	BufferLineCloseButton = { fg = colors.gray75, bg = colors.gray90 },
	BufferLineCloseButtonSelected = { fg = colors.gray00, bg = colors.gray80 },
}

for group, spec in pairs(bufferline_colors) do
	vim.api.nvim_set_hl(0, group, spec)
end

-- Aplicar los colores
for group, spec in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, spec)
end

-- Grupos de Treesitter (mapeados a grupos clásicos para que hereden colores)
local treesitter_groups = {
	["@variable"] = { link = "Identifier" },
	["@variable.builtin"] = { link = "Special" },
	["@variable.parameter"] = { link = "Identifier" },
	["@variable.member"] = { link = "Identifier" },
	["@constant"] = { link = "Constant" },
	["@constant.builtin"] = { link = "Special" },
	["@constant.macro"] = { link = "Macro" },
	["@module"] = { link = "Include" },
	["@module.builtin"] = { link = "Special" },
	["@label"] = { link = "Label" },
	["@string"] = { link = "String" },
	["@string.documentation"] = { link = "Comment" },
	["@string.regexp"] = { link = "String" },
	["@string.escape"] = { link = "SpecialChar" },
	["@string.special"] = { link = "SpecialChar" },
	["@string.special.url"] = { fg = colors.blue, underline = true },
	["@character"] = { link = "Character" },
	["@character.special"] = { link = "SpecialChar" },
	["@boolean"] = { link = "Boolean" },
	["@number"] = { link = "Number" },
	["@number.float"] = { link = "Float" },
	["@type"] = { link = "Type" },
	["@type.builtin"] = { link = "Type" },
	["@type.definition"] = { link = "Typedef" },
	["@type.qualifier"] = { link = "Keyword" },
	["@attribute"] = { link = "PreProc" },
	["@property"] = { link = "Identifier" },
	["@function"] = { link = "Function" },
	["@function.builtin"] = { link = "Special" },
	["@function.call"] = { link = "Function" },
	["@function.macro"] = { link = "Macro" },
	["@function.method"] = { link = "Function" },
	["@function.method.call"] = { link = "Function" },
	["@constructor"] = { link = "Special" },
	["@operator"] = { link = "Operator" },
	["@keyword"] = { link = "Keyword" },
	["@keyword.coroutine"] = { link = "Keyword" },
	["@keyword.function"] = { link = "Keyword" },
	["@keyword.operator"] = { link = "Operator" },
	["@keyword.return"] = { link = "Keyword" },
	["@keyword.exception"] = { link = "Exception" },
	["@keyword.conditional"] = { link = "Conditional" },
	["@keyword.repeat"] = { link = "Repeat" },
	["@keyword.debug"] = { link = "Debug" },
	["@keyword.import"] = { link = "Include" },
	["@keyword.storage"] = { link = "StorageClass" },
	["@keyword.modifier"] = { link = "Type" },
	["@keyword.directive"] = { link = "PreProc" },
	["@keyword.directive.define"] = { link = "Define" },
	["@punctuation.delimiter"] = { link = "Delimiter" },
	["@punctuation.bracket"] = { fg = colors.gray15 },
	["@punctuation.special"] = { link = "Special" },
	["@comment"] = { link = "Comment" },
	["@comment.documentation"] = { link = "SpecialComment" },
	["@comment.error"] = { fg = colors.dark_purple },
	["@comment.warning"] = { fg = colors.dark_yellow },
	["@comment.todo"] = { fg = colors.yellow, bold = true },
	["@comment.note"] = { fg = colors.blue, bold = true },
	["@markup.strong"] = { bold = true },
	["@markup.italic"] = { italic = true },
	["@markup.strikethrough"] = { strikethrough = true },
	["@markup.underline"] = { underline = true },
	["@markup.heading"] = { fg = colors.purple, bold = true },
	["@markup.quote"] = { fg = colors.gray75, italic = true },
	["@markup.math"] = { link = "Special" },
	["@markup.environment"] = { link = "Macro" },
	["@markup.link"] = { fg = colors.blue, underline = true },
	["@markup.link.label"] = { link = "SpecialChar" },
	["@markup.link.url"] = { fg = colors.blue, underline = true },
	["@markup.raw"] = { link = "String" },
	["@markup.raw.block"] = { link = "String" },
	["@markup.list"] = { fg = colors.yellow },
	["@markup.list.checked"] = { fg = colors.light_green },
	["@markup.list.unchecked"] = { fg = colors.gray75 },
	["@diff.plus"] = { fg = colors.light_green, bg = colors.dark_green },
	["@diff.minus"] = { fg = colors.dark_purple, bg = colors.gray85 },
	["@diff.delta"] = { fg = colors.blue, bg = colors.dark_blue },
	["@tag"] = { link = "Tag" },
	["@tag.attribute"] = { link = "Identifier" },
	["@tag.delimiter"] = { link = "Delimiter" },
}

for group, spec in pairs(treesitter_groups) do
	vim.api.nvim_set_hl(0, group, spec)
end

-- Opcional: Establecer el fondo de la terminal
vim.cmd("hi Terminal guibg=" .. colors.gray90)
