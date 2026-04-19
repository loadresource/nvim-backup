return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				"isort",
				"black",
				"prettierd",
				"clang-format",
			},
		},
	},
}
