return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "lua", "vim", "vimdoc","c","cpp" },
      auto_install = true,
      highlight = { enable = true },
    },
  },
}
