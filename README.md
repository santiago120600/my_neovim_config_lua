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
- **[fzf](https://github.com/junegunn/fzf)**: A general-purpose command-line fuzzy finder
  ```bash
  scoop bucket add main
  scoop install main/fzf
  ```
- **Treesitter**: Install parser using `:TSInstall {parser_name}`
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
- **[fzf.vim](https://github.com/junegunn/fzf.vim)**: fuzzy finder in Neovim
- **[fugitive.vim](https://github.com/tpope/vim-fugitive)**: Git plugin for Vim

## Check Health
Run the command `:checkhealth` in Neovim to check the health of your setup.

## Message History
Run the command `:Noice` in Neovim to show a full message history

## Wakatime
Type `:WakaTimeApiKey` to enter [API-KEY](https://wakatime.com/login?next=https://wakatime.com/settings/api-key)

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

**References**
| Mode | Description           | How to Enter            |
|:-----|:----------------------|:------------------------|
| n    | Normal mode           | Press `Esc`             |
| v    | Visual mode           | Press `v`               |
| x    | Operator-pending mode | Press `v` then a motion |
| o    | Open line below mode  | Press `o`               |
| i    | Insert mode           | Press `i`               |
| s    | Select mode           | Press `s`               |

**Buffers**
| Command               | Description       |
|-----------------------|-------------------|
| `:ls`                 | List open buffers |
| `:files`              | List open buffers |
| `:buffers`            | List open buffers |
| `:bprevious`          | Previous buffer   |
| `:bnext`              | Next buffer       |
| `:bdelete <filename>` | Delete buffer     |
| `:edit <filename>`    | Open buffer       |
| `:split <filename>`   | horizontal split  |
| `:vsplit <filename>`  | vertical split    |

| Key  | Description     | Mode |
|:-----|:----------------|------|
| `nb` | Next buffer     | n    |
| `pb` | Previous buffer | n    |

**Blink**
| Key       | Description         | Mode |
|:----------|:--------------------|------|
| `<ctrl>n` | Next suggestion     | i    |
| `<ctrl>p` | Previous suggestion | i    |
| `<ctrl>y` | Accept suggestion   | i    |
| `<ctrl>e` | Hide menu           | i    |
| `<Tab>`   | Select first        | i    |

**mini-surround**
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
| Key          | Description            | Mode |
|:-------------|:-----------------------|------|
| `<leader>nt` | Open                   | n    |
| `a`          | New file               | n    |
| `d`          | Delete                 | n    |
| `y`          | Copy to clipboard      | n    |
| `x`          | Cut to clipboard       | n    |
| `p`          | Paste from clipboard   | n    |
| `c`          | copy                   | n    |
| `D`          | Fuzzy finder directory | n    |
| `[g`         | Prev git modified      | n    |
| `]g`         | Next git modified      | n    |
| `H`          | Toggle hidden          | n    |
| `s`          | Open vsplit            | n    |
| `i`          | Show file details      | n    |
| `m`          | move                   | n    |
| `b`          | Rename basename        | n    |

**Telescope**
| Key          | Description                     | Mode |
|:-------------|:--------------------------------|------|
| `<leader>ff` | Find Files                      | n    |
| `<leader>fb` | Find buffers                    | n    |
| `<leader>lg` | Open lazy git                   | n    |
| `<leader>fg` | Live Grep                       | n    |
| `<leader>fh` | Help Tags                       | n    |
| `<leader>fo` | Recent files                    | n    |
| `<ctrl>j`    | Next selection                  | n    |
| `<ctrl>k`    | Previous Selection              | n    |
| `<ctrl>t`    | Open file in new tab            | n    |
| `<ctrl>x`    | Open file in new split          | n    |
| `<ctrl>v`    | Open file in new vertical split | n    |
| `<ctrl>d`    | Delete buffer                   | n    |

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
| `<Alt>h` | Move left   | n,v  |
| `<Alt>l` | Move right  | n,v  |
| `<Alt>j` | Move down   | n,v  |
| `<Alt>k` | Move up     | n,v  |

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

**LazyGit**
| Key       | Description                            |
|-----------|----------------------------------------|
| `:`       | Execute shell command                  |
| `q`       | Quit                                   |
| `<Ctl>t`  | Open external diff tool (git difftool) |
| `.`       | Next page                              |
| `,`       | Previous page                          |
| `/`       | Search the current view by text        |
| `]`       | Next tab                               |
| `[`       | Previous tab                           |
| `<Ctl>o`  | Copy path to clipboard                 |
| `<Space>` | Toggle staged for selected file        |
| `c`       | Commit staged changes                  |

**LSP**
| Key          | Description          | Mode |
|--------------|----------------------|------|
| `gd`         | Go to definition     | n    |
| `gD`         | Go to declaration    | n    |
| `gi`         | Go to implementation | n    |
| `gr`         | Go to references     | n    |
| `K`          | Hover documentation  | n    |
| `<C-k>`      | Signature help       | n    |
| `<leader>cr` | Rename symbol        | n    |
| `<leader>ca` | Code actions         | n    |
| `<leader>cf` | Format code          | n    |

**fzf**
| Command                | List                                                                                  |
|------------------------|---------------------------------------------------------------------------------------|
| `:Files [PATH]`        | Files (runs `$FZF_DEFAULT_COMMAND` if defined)                                        |
| `:GFiles [OPTS]`       | Git files (`git ls-files`)                                                            |
| `:GFiles?`             | Git files (`git status`)                                                              |
| `:Buffers`             | Open buffers                                                                          |
| `:Colors`              | Color schemes                                                                         |
| `:Ag [PATTERN]`        | [ag][ag] search result (`ALT-A` to select all, `ALT-D` to deselect all)               |
| `:Rg [PATTERN]`        | [rg][rg] search result (`ALT-A` to select all, `ALT-D` to deselect all)               |
| `:RG [PATTERN]`        | [rg][rg] search result; relaunch ripgrep on every keystroke                           |
| `:Lines [QUERY]`       | Lines in loaded buffers                                                               |
| `:BLines [QUERY]`      | Lines in the current buffer                                                           |
| `:Tags [PREFIX]`       | Tags in the project (`ctags -R`)                                                      |
| `:BTags [QUERY]`       | Tags in the current buffer                                                            |
| `:Changes`             | Changelist across all open buffers                                                    |
| `:Marks`               | Marks                                                                                 |
| `:Jumps`               | Jumps                                                                                 |
| `:Windows`             | Windows                                                                               |
| `:Locate PATTERN`      | `locate` command output                                                               |
| `:History`             | `v:oldfiles` and open buffers                                                         |
| `:History:`            | Command history                                                                       |
| `:History/`            | Search history                                                                        |
| `:Snippets`            | Snippets ([UltiSnips][us])                                                            |
| `:Commits [LOG_OPTS]`  | Git commits (requires [fugitive.vim][f])                                              |
| `:BCommits [LOG_OPTS]` | Git commits for the current buffer; visual-select lines to track changes in the range |
| `:Commands`            | Commands                                                                              |
| `:Maps`                | Normal mode mappings                                                                  |
| `:Helptags`            | Help tags                                                                             |
| `:Filetypes`           | File types                                                                            |

**Jumps**
| Key        | Description                                                    | Mode |
|------------|----------------------------------------------------------------|------|
| `<Ctl>o`   | jump back to the previous position in the jump list            | n    |
| `<Ctl>i`   | jump forward                                                   | n    |
| `''`       | jump to the last position where you made an edit               | n    |
| ``` `` ``` | jump to the exact position (line and column) of your last jump | n    |

| Command  | Description  |
|----------|--------------|
| `:jumps` | Jump history |