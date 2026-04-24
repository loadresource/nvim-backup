return {
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- ya lo tienes instalado
		config = function()
			require("bufferline").setup({
				options = {
					mode = "buffers", -- o "buffers" si prefieres que se muestren todos
					numbers = "none", -- sin números
					indicator = {
						--	style = "underline", -- línea indicadora bajo la pestaña activa
					},
					--separator_style = "slant",
					separator = false,
					show_close_icon = true,
					show_buffer_close_icons = true,
					always_show_bufferline = true, -- oculta cuando hay solo un archivo
					offsets = {
						{
							filetype = "NvimTree",
							text = "Explorador",
							padding = 1,
						},
					},
				},
			})
		end,
	},
}
