return {
  -- 1. Mason: instalador de servidores
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },
  -- 2. Mason-LSPConfig: asegura que los servidores estén instalados
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "ts_ls",
          "clangd",
          "html",
          "cssls",
          "jsonls",
        },
        automatic_installation = true,
      })
    end,
  },
  -- 3. nvim-lspconfig (para usar las configuraciones por defecto)
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "b0o/SchemaStore.nvim", -- Necesario para schemastore en jsonls (opcional)
    },
    config = function()
      -- Activar los servidores usando sus configuraciones por defecto
      local servers = { "lua_ls", "pyright", "ts_ls", "clangd", "html", "cssls", "jsonls" }
      vim.lsp.enable(servers)

      -- =====================================================
      -- 🔧 PERSONALIZACIONES ESPECÍFICAS POR SERVIDOR
      -- =====================================================

      -- Lua
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      })

      -- C/C++ (clangd)
      vim.lsp.config("clangd", {
        cmd = { "clangd", "--background-index" },
      })

      -- Python (pyright)
      vim.lsp.config("pyright", {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic", -- Modo de chequeo de tipos
            },
          },
        },
      })

      -- JSON (jsonls)
      vim.lsp.config("jsonls", {
        settings = {
          json = {
            -- Carga automática de esquemas para autocompletado inteligente
            schemas = require("schemastore").json.schemas({}),
            validate = { enable = true },
          },
        },
      })

      -- JavaScript / TypeScript (ts_ls)
vim.lsp.config("ts_ls", {
  settings = {
    -- Opciones generales del servidor
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "all", -- Muestra nombres de parámetros
        includeInlayParameterTypeHints = "all", -- Muestra tipos de parámetros
        includeInlayFunctionLikeReturnTypeHints = true, -- Muestra tipo de retorno
      },
    },
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterTypeHints = "all",
        includeInlayFunctionLikeReturnTypeHints = true,
      },
    },
  },
})

      -- Puedes añadir más servidores aquí siguiendo el mismo patrón...
    end,
  },
}
