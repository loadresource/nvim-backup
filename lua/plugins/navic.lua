return {
	{
		"SmiteshP/nvim-navic",
		dependencies = { "neovim/nvim-lspconfig" },
		lazy = false,
		config = function()
			local navic = require("nvim-navic")
			navic.setup({
				lsp = {
					auto_attach = true,
					preference = nil,
				},
				highlight = true,
				separator = " > ",
				depth_limit = 5,
				depth_limit_indicator = "..",
			})

			-- Configurar el winbar de forma segura
			vim.o.winbar = "%{%v:lua.require('nvim-navic').get_location()%}"
		end,
	},
}
