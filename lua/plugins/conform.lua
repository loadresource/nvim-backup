return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		opts = {
			-- Definir formateadores por tipo de archivo
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" }, -- isort ordena imports, black formatea
				javascript = { "prettierd", "prettier" },
				typescript = { "prettierd", "prettier" },
				javascriptreact = { "prettierd", "prettier" },
				typescriptreact = { "prettierd", "prettier" },
				c = { "clang_format" },
				cpp = { "clang_format" },
				html = { "prettierd", "prettier" },
				css = { "prettierd", "prettier" },
				json = { "prettierd", "prettier" },
				-- También puedes añadir otros tipos de archivo comunes
				markdown = { "prettierd", "prettier" },
				yaml = { "prettierd", "prettier" },
			},
			-- Formatear al guardar
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
			-- Opciones por defecto para todos los formateadores
			default_format_opts = {
				lsp_format = "fallback",
			},
		},
	},
}
