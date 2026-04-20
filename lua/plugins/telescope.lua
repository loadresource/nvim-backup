-- ~/.config/nvim/lua/plugins/telescope.lua
return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8", -- Versión estable recomendada
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			-- Archivos y búsqueda
			{ "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Buscar archivos" },
			{ "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Buscar texto (grep)" },
			{ "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Listar buffers" },
			{ "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Buscar ayuda" },
			{ "<leader>fr", "<cmd>Telescope oldfiles<CR>", desc = "Archivos recientes" },
			{ "<leader>fc", "<cmd>Telescope commands<CR>", desc = "Comandos" },
			{ "<leader>fk", "<cmd>Telescope keymaps<CR>", desc = "Buscar atajos de teclado" },
			{ "<leader>fs", "<cmd>Telescope grep_string<CR>", desc = "Buscar palabra bajo cursor" },

			-- Integración LSP con Telescope
			{ "<leader>gr", "<cmd>Telescope lsp_references<CR>", desc = "Referencias (LSP)" },
			{ "<leader>gd", "<cmd>Telescope lsp_definitions<CR>", desc = "Definiciones (LSP)" },
			{ "<leader>gi", "<cmd>Telescope lsp_implementations<CR>", desc = "Implementaciones (LSP)" },
			{ "<leader>gt", "<cmd>Telescope lsp_type_definitions<CR>", desc = "Definiciones de tipo (LSP)" },
			{ "<leader>ds", "<cmd>Telescope lsp_document_symbols<CR>", desc = "Símbolos del documento (LSP)" },
			{ "<leader>ws", "<cmd>Telescope lsp_workspace_symbols<CR>", desc = "Símbolos del workspace (LSP)" },
			{ "<leader>dd", "<cmd>Telescope diagnostics<CR>", desc = "Diagnósticos del workspace" },
			{ "<leader>db", "<cmd>Telescope diagnostics bufnr=0<CR>", desc = "Diagnósticos del buffer actual" },
		},
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")

			-- Cargar extensiones
			pcall(telescope.load_extension, "lsp")
			pcall(telescope.load_extension, "ui-select")
			pcall(telescope.load_extension, "fzf")

			telescope.setup({
				defaults = {
					-- Solución al error de ft_to_lang en Treesitter
					preview = {
						treesitter = false,
					},
					file_ignore_patterns = {
						"node_modules",
						".git/",
						"__pycache__",
						"%.class",
						"%.o",
						"%.so",
					},
					layout_config = {
						prompt_position = "top",
						width = 0.9,
						height = 0.9,
					},
					sorting_strategy = "ascending",
					path_display = { "truncate" },
					mappings = {
						i = {
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
							["<C-n>"] = actions.preview_scrolling_down,
							["<C-p>"] = actions.preview_scrolling_up,
							["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
							["<C-l>"] = actions.complete_tag,
							["<C-_>"] = actions.which_key, -- Muestra los atajos disponibles
						},
						n = {
							["q"] = actions.close,
							["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
						},
					},
				},
				pickers = {
					find_files = {
						theme = "dropdown",
						hidden = true,
						find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
					},
					live_grep = {
						theme = "dropdown",
						additional_args = function()
							return { "--hidden" }
						end,
					},
					buffers = {
						theme = "dropdown",
						sort_lastused = true,
						ignore_current_buffer = true,
					},
					grep_string = {
						theme = "dropdown",
					},
					diagnostics = {
						theme = "dropdown",
					},
				},
				extensions = {
					lsp = {
						theme = "dropdown",
						show_line = true,
						trim_text = true,
					},
					fzf = {
						fuzzy = true,
						override_generic_sorter = true,
						override_file_sorter = true,
						case_mode = "smart_case",
					},
				},
			})

			-- Configurar ui-select para que use Telescope en lugar de inputlist
			pcall(function()
				require("telescope").load_extension("ui-select")
				vim.ui.select = require("telescope.themes").get_dropdown()
			end)
		end,
	},
	-- Extensión opcional para mejor rendimiento de búsqueda difusa
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		lazy = true,
		config = function()
			pcall(require("telescope").load_extension, "fzf")
		end,
	},
}
