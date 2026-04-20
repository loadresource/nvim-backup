return {
	{
		"stevearc/oil.nvim",
		lazy = false,
		opts = {
			default_file_explorer = true,
			keymaps = {
				["q"] = "actions.close", -- Cierra el buffer de oil al presionar 'q'
			},
		},
		dependencies = {
			{ "nvim-mini/mini.icons", opts = {} },
		},
	},
}
