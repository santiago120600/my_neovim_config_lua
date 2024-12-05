# Neovim config

Place these files under `~/AppData/Local/nvim` on Windows. To find where that directory is exactly, use the command `:echo stdpath('config')` inside Neovim.

If this directory does not exist, create it and put your config file there.

## Dependencies
- **Neovim** >= 0.10.2 (needs to be built with LuaJIT)
- **[lazygit](https://github.com/jesseduffield/lazygit)**: A simple terminal UI for git commands
  ```bash
  scoop bucket add extras
  scoop install extras/lazygit
  ```
- **Lua**:
  ```bash
  scoop bucket add main
  scoop install main/lua
  ```
  - **Note**: Requires 7zip >= 24.08
- **LuaRocks installation**:
  ```bash
  scoop install main/luarocks
  ```
- **[Nerd fonts](https://github.com/ryanoasis/nerd-fonts/)**:
  ```bash
  scoop bucket add nerd-fonts
  scoop install nerd-fonts/JetBrainsMono-NF-Mono
  ```
- **Zig**:
  ```bash
  scoop bucket add main
  scoop install main/zig
  ```
- **MinGW**:
  ```bash
  scoop bucket add main
  scoop install main/mingw
  ```
- **[ripgrep](https://github.com/BurntSushi/ripgrep)**: Utilized for ignoring files in telescope search
  ```bash
  scoop bucket add main
  scoop install main/ripgrep
  ```
- **Treesitter**: Install parser using `:TSInstall {parser_name}`

## List of Installed Plugins
- **[Lazygit](https://github.com/kdheepak/lazygit.nvim)**: A Neovim plugin for a simple terminal UI for git commands.
- **[gruvbox](https://github.com/ellisonleao/gruvbox.nvim)**: A retro groove color scheme for Neovim.
- **[Mini-move](https://github.com/echasnovski/mini.move)**: A plugin for easy movement of text in Neovim.
- **[treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: A parser generator tool and an incremental parsing library.
- **[lualine](https://github.com/nvim-lualine/lualine.nvim)**: A blazing fast and easy to configure Neovim statusline.
- **[mini-starter](https://github.com/echasnovski/mini.starter)**: A minimal starter for Neovim.
- **[mason](https://github.com/williamboman/mason.nvim)**: A package manager for Neovim.
- **[trouble](https://github.com/folke/trouble.nvim)**: A plugin for managing and displaying diagnostics.
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: A completion plugin for Neovim.
- **[neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)**: A file manager for Neovim.
- **[Noice](https://github.com/folke/noice.nvim)**: A modern message bubbles plugin for displaying messages and warnings in Neovim.
- **[which-key](https://github.com/folke/which-key.nvim)**: A plugin that displays a key map for Vim and Neovim.
- **[mini-surround](https://github.com/echasnovski/mini.surround)**: A compact and feature-rich plugin for surround mode operations (e.g., surround with quotes, parentheses, etc.).
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: A completion plugin for Neovim.

## Check Health
Run the command `:checkhealth` in Neovim to check the health of your setup.

## Default shortcuts
[Here](https://www.lazyvim.org/keymaps) you can find the list of default shortcuts for efficient navigation and editing in Neovim.

**References**
| Mode | Description           | How to Enter            |
| :--- | :-------------------- | :---------------------- |
| n    | Normal mode           | Press `Esc`             |
| v    | Visual mode           | Press `v`               |
| x    | Operator-pending mode | Press `v` then a motion |
| o    | Open line below mode  | Press `o`               |
| i    | Insert mode           | Press `i`               |
| s    | Select mode           | Press `s`               |

**Surround**
| Key     | Description                  | Mode |
| :------ | :--------------------------- | ---- |
| `gsaw"` | Add " Surrounding            | n,v  |
| `gsd"`  | Delete " Surrounding         | n    |
| `gsf"`  | Find Right " Surrounding     | n    |
| `gsF"`  | Find Left " Surrounding      | n    |
| `gsh"`  | Highlight " Surrounding      | n    |
| `gsr"'` | Replace " Surrounding with ' | n    |

**Tabs**
| Key            | Description              | Mode |
| :------------- | :----------------------- | ---- |
| `gt`           | Move to the next tab     | n    |
| `gT`           | Move to the previous tab | n    |
| `<Tab>`        | Move to the next tab     | n    |
| `<Shift><Tab>` | Move to the previous tab | n    |
| `<ctrl>t`      | Open New tab             | n    |
| `<ctrl>w`      | Close current tab        | n    |

**Neo-tree**
| Key         | Description | Mode |
| :---------- | :---------- | ---- |
| `<leader>e` | Open        | n    |

**Telescope**
| Key          | Description  | Mode |
| :----------- | :----------- | ---- |
| `<leader>ff` | Find Files   | n    |
| `<leader>fb` | Find buffers | n    |

**Telescope**
| Key          | Description   | Mode |
| :----------- | :------------ | ---- |
| `<leader>lg` | Open lazy git | n    |

