return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Íconos de archivos
    config = function()
      require("lualine").setup({
        options = {
         theme = "auto",               -- Se adapta al colorscheme actual
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
          globalstatus = true,           -- Barra única para todas las ventanas
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = { "filename" },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      })
    end,
  },
}
