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
- **[Nerd fonts](https://github.com/ryanoasis/nerd-fonts/)**:
  ```bash
  scoop bucket add nerd-fonts
  scoop install nerd-fonts/JetBrainsMono-NF-Mono
  ```
- **[ripgrep](https://github.com/BurntSushi/ripgrep)**: Utilized for ignoring files in telescope search
  ```bash
  scoop bucket add main
  scoop install main/ripgrep
  ```
- **Treesitter**: Install parser using `:TSInstall {parser_name}`
- **pynvim**:
  ```bash
  pip install --upgrade pynvim
  ```
- **debugpy**:
`C:/Users/santi/.pyenv/pyenv-win/versions/3.13.2/python.exe -m pip install debugpy`
- **[mason](https://github.com/williamboman/mason.nvim)**: Utilized for installing LSP and DAP
- **Avante**:
  Required environment variable `GEMINI_API_KEY`

## List of Installed Plugins
- **[Lazygit](https://github.com/kdheepak/lazygit.nvim)**: A Neovim plugin for a simple terminal UI for git commands.
- **[gruvbox](https://github.com/ellisonleao/gruvbox.nvim)**: A retro groove color scheme for Neovim.
- **[Mini-move](https://github.com/echasnovski/mini.move)**: A plugin for easy movement of text in Neovim.
- **[treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: A parser generator tool and an incremental parsing library.
- **[lualine](https://github.com/nvim-lualine/lualine.nvim)**: A blazing fast and easy to configure Neovim statusline.
- **[mason](https://github.com/williamboman/mason.nvim)**: A package manager for Neovim.
- **[trouble](https://github.com/folke/trouble.nvim)**: A plugin for managing and displaying diagnostics.
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: A completion plugin for Neovim.
- **[neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)**: A file manager for Neovim.
- **[Noice](https://github.com/folke/noice.nvim)**: A modern message bubbles plugin for displaying messages and warnings in Neovim.
- **[which-key](https://github.com/folke/which-key.nvim)**: A plugin that displays a key map for Vim and Neovim.
- **[mini-surround](https://github.com/echasnovski/mini.surround)**: A compact and feature-rich plugin for surround mode operations (e.g., surround with quotes, parentheses, etc.).
- **[blink.cmp](https://github.com/Saghen/blink.cmp)**: A completion plugin for Neovim.
- **[avante](https://github.com/yetone/avante.nvim)**: Emulate the behaviour of the Cursor IDE
- **[vim-tig](https://github.com/codeindulgence/vim-tig)**: [Tig](https://jonas.github.io/tig/) integration

## Check Health
Run the command `:checkhealth` in Neovim to check the health of your setup.

## Message History
Run the command `:Noice` in Neovim to show a full message history

## Tig
| Command                                          | Description                          |
|:-------------------------------------------------|:-------------------------------------|
| `:Tig!`                                          | show commit log of current file      |
| `:Tig        [options] [revisions] [--] [paths]` | Start up in status view              |
| `:Tig status`                                    | Start up in status view              |
| `:Tig log    [options] [revisions] [--] [paths]` | Start up in log view                 |
| `:Tig show   [options] [revisions] [--] [paths]` | Open diff view                       |
| `:Tig reflog [options] [revisions]`              | Start up in reflog view              |
| `:Tig blame  [options] [rev] [--] path`          | Show given file annotated by commits |
| `:Tig grep   [options] [pattern]`                | Open the grep view                   |
| `:Tig refs   [options]`                          | Start up in refs view                |
| `:Tig stash  [options]`                          | Start up in stash view               |

## Default shortcuts
[Here](https://www.lazyvim.org/keymaps) you can find the list of default shortcuts for efficient navigation and editing in Neovim.

**References**
| Mode | Description           | How to Enter            |
|:-----|:----------------------|:------------------------|
| n    | Normal mode           | Press `Esc`             |
| v    | Visual mode           | Press `v`               |
| x    | Operator-pending mode | Press `v` then a motion |
| o    | Open line below mode  | Press `o`               |
| i    | Insert mode           | Press `i`               |
| s    | Select mode           | Press `s`               |

**Blink**
| Key       | Description         | Mode |
|:----------|:--------------------|------|
| `<ctrl>n` | Next suggestion     | n    |
| `<ctrl>p` | Previous suggestion | n    |
| `<ctrl>y` | Accept suggestion   | n    |

**Surround**
| Key     | Description                  | Mode |
|:--------|:-----------------------------|------|
| `gsaw"` | Add " Surrounding            | n,v  |
| `gsd"`  | Delete " Surrounding         | n    |
| `gsf"`  | Find Right " Surrounding     | n    |
| `gsF"`  | Find Left " Surrounding      | n    |
| `gsh"`  | Highlight " Surrounding      | n    |
| `gsr"'` | Replace " Surrounding with ' | n    |

**Tabs**
| Key            | Description              | Mode |
|:---------------|:-------------------------|------|
| `gt`           | Move to the next tab     | n    |
| `gT`           | Move to the previous tab | n    |
| `<Tab>`        | Move to the next tab     | n    |
| `<Shift><Tab>` | Move to the previous tab | n    |
| `<ctrl>t`      | Open New tab             | n    |
| `<ctrl>w`      | Close current tab        | n    |

**Neo-tree**
| Key          | Description | Mode |
|:-------------|:------------|------|
| `<leader>nt` | Open        | n    |

**Telescope**
| Key          | Description        | Mode |
|:-------------|:-------------------|------|
| `<leader>ff` | Find Files         | n    |
| `<leader>fb` | Find buffers       | n    |
| `<leader>lg` | Open lazy git      | n    |
| `<leader>fg` | Live Grep          | n    |
| `<leader>fh` | Help Tags          | n    |
| `<leader>fo` | Recent files       | n    |
| `<ctrl>j`    | Next selection     | n    |
| `<ctrl>k`    | Previous Selection | n    |

**DAP**
| Key          | Description                  | Mode |
|:-------------|:-----------------------------|------|
| `<leader>db` | Toggle Breakpoint            | n    |
| `<leader>dc` | Start/Continue Debugging     | n    |
| `<leader>dt` | Terminate Debugging          | n    |
| `<leader>do` | Step Over                    | n    |
| `<leader>di` | Step Into                    | n    |
| `<leader>dO` | Step Out                     | n    |
| `<leader>du` | Toggle DAP UI                | n    |
| `<leader>dB` | Breakpoint condition         | n    |
| `<leader>dl` | Run Last Debug Configuration | n    |

**Comments**
| Key   | Description    | Mode |
|:------|:---------------|------|
| `gc`  | Toggle comment | v    |
| `gcc` | Toggle comment | n    |

**mini-move**
| Key      | Description | Mode |
|:---------|:------------|------|
| `<Ctl>h` | Move left   | n,v  |
| `<Ctl>l` | Move right  | n,v  |
| `<Ctl>j` | Move down   | n,v  |
| `<Ctl>k` | Move up     | n,v  |

**avante**
| Key          | Description                                  | Mode |
|--------------|----------------------------------------------|------|
| `<Leader>aa` | show sidebar                                 | n    |
| `<Leader>at` | toggle sidebar visibility                    | n    |
| `<Leader>ar` | refresh sidebar                              | n    |
| `<Leader>af` | switch sidebar focus                         | n    |
| `<Leader>a?` | select model                                 | n    |
| `<Leader>ae` | edit selected blocks                         | n    |
| `<Leader>as` | stop current AI request                      | n    |
| `<Leader>ah` | select between chat histories                | n    |
| `co`         | choose ours                                  | n    |
| `ct`         | choose theirs                                | n    |
| `ca`         | choose all theirs                            | n    |
| `c0`         | choose none                                  | n    |
| `cb`         | choose both                                  | n    |
| `cc`         | choose cursor                                | n    |
| `]x`         | move to previous conflict                    | n    |
| `[x`         | move to next conflict                        | n    |
| `[[`         | jump to previous codeblocks (results window) | n    |
| `]]`         | jump to next codeblocks (results windows)    | n    |