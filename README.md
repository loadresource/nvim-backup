# nvim-backup
backup for my neovim config

# Requisitos para la configuración de Neovim

## 🧰 Herramientas básicas del sistema

| Requisito | Descripción | Instalación (Debian/Ubuntu) |
|-----------|-------------|------------------------------|
| **Neovim 0.10+** | Editor base (se recomienda la última versión estable) | [Instrucciones oficiales](https://github.com/neovim/neovim/wiki/Installing-Neovim) |
| **Git** | Para clonar plugins con `lazy.nvim` | `sudo apt install git` |
| **Compilador C/C++** | Requerido por `nvim-treesitter` para compilar parsers | `sudo apt install build-essential` |
| **Rust + Cargo** | Para instalar `tree-sitter-cli` (compilación de parsers) | [rustup.rs](https://rustup.rs/) |
| **tree-sitter-cli** | Herramienta para compilar gramáticas de Treesitter | `cargo install tree-sitter-cli` |
| **Nerd Font** | Fuente con íconos (recomendado para `lualine` y `nvim-tree`) | [Nerd Fonts](https://www.nerdfonts.com/font-downloads) (ej: FiraCode Nerd Font) |
| **Clipboard tool** | Sincronización con el portapapeles del sistema | `sudo apt install xclip` (X11) o `wl-clipboard` (Wayland) |

## 📦 Servidores LSP y herramientas (instalados automáticamente por Mason)

Esta configuración instalará automáticamente los siguientes servidores gracias a `mason.nvim` y `mason-lspconfig.nvim`:

- `lua_ls` – Servidor para Lua
- `pyright` – Servidor para Python
- `ts_ls` – Servidor para TypeScript/JavaScript
- `clangd` – Servidor para C/C++
- `html` – Servidor para HTML
- `cssls` – Servidor para CSS
- `jsonls` – Servidor para JSON

## 🎨 Formateadores de código (instalados automáticamente por Mason)

| Lenguaje | Formateador | Notas |
|----------|-------------|-------|
| Lua | `stylua` | Se instala vía Mason |
| Python | `isort` + `black` | Orden de imports + formato |
| JavaScript/TypeScript | `prettierd` | Versión rápida de Prettier |
| HTML/CSS/JSON | `prettierd` | – |
| C/C++ | `clang-format` | Se instala vía Mason |

## 🔧 Dependencias opcionales (para funcionalidades extra)

| Herramienta | Propósito |
|-------------|-----------|
| `ripgrep` (`rg`) | Búsqueda rápida con Telescope (si se instala) |
| `lazygit` | Integración con Git desde Neovim |
| `unzip` / `wget` | Requeridos por algunos instaladores de Mason |

## ✅ Verificación rápida

Ejecuta los siguientes comandos para comprobar que todo está listo:

```bash
nvim --version         # >= 0.10.0
git --version          # cualquier versión reciente
gcc --version          # presencia de compilador
cargo --version        # gestor de paquetes de Rust
tree-sitter --version  # >= 0.22.0
