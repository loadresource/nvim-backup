-- ~/.config/nvim/lua/plugins/ccc.lua
return {
	{
		"uga-rosa/ccc.nvim",

		cmd = "CccPick", -- Solo se carga cuando llamas al comando
		config = function()
			require("ccc").setup()
			-- Opcional: Mapea una tecla para abrir el selector
			vim.keymap.set("n", "<leader>cc", ":CccPick<CR>", { desc = "Abrir selector de color" })
		end,
	},
}
