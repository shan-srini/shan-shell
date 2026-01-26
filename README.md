# Neovim Configuration

A modern, full-featured Neovim configuration built for speed and aesthetics.

## Installation

1.  Backup your existing configuration:
    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    ```

2.  Copy this configuration to `~/.config/nvim`.

3.  Open Neovim:
    ```bash
    nvim
    ```
    Plugins will automatically install via `lazy.nvim`.

## Cheatsheet

### 📂 File Explorer (Neo-tree)
| Key | Action |
| --- | --- |
| `<leader>e` / `<C-n>` | Toggle Explorer |
| `Enter` | Open file in current tab |
| `t` | Open file in **new tab** |
| `s` | Open file in vertical split |
| `i` | Open file in horizontal split |
| `a` | Create new file/folder |
| `d` | Delete file |
| `r` | Rename file |

### 🔍 Search & Navigation (Telescope)
| Key | Action |
| --- | --- |
| `<leader>fp` / `<C-p>` | Find files (search by name) |
| `<leader>fg` | Global search (search by text) |
| `<C-o>` | **Go back** to previous location |
| `<C-i>` | Go forward to next location |
### 📑 Buffer Management
| Key | Action |
| --- | --- |
| `<leader>w` / `<Cmd-w>` | **Close** current buffer |
| `<leader>t` | New empty buffer |
| `<Space><Left>` / `<Space><Right>` | Navigate **tabs/buffers** |
| `<S-h>` / `<S-l>` | Navigate **tabs/buffers** (alternate) |
| `[b` / `]b` | Previous / Next buffer |

### 🛠️ Coding & LSP
| Key | Action |
| --- | --- |
| `gd` | Go to definition |
| `gi` | **Go to implementation** |
| `<leader>rn` | **Rename symbol** |
| `K` | Hover documentation |
| `za` | **Collapse/Expand current block** (fold) |
| `<C-Space>` | Trigger **Autocomplete** |
| `<leader>fm` | **Format** current file |
| `<Leader>d` | Show line diagnostics |

### 🧪 Testing (Neotest)
| Key | Action |
| --- | --- |
| `<leader>tt` | Run nearest test |
| `<leader>tf` | Run file tests |
| `<leader>ts` | Toggle summary **(Test Explorer)** |
| `<leader>to` | Show output |

### 🐙 Git Integration
| Key | Action |
| --- | --- |
| `<leader>gg` | Open **LazyGit** (Full UI from config) |
| `<leader>gd` | **Diff** current file (Split view) |
| `]h` / `[h` | Next / Previous git change (hunk) |
| `<leader>ghp` | Preview hunk |
| `<leader>ghr` | **Reset** Hunk (Discard changes) |
| `<leader>ghu` | **Undo** Stage Hunk (Keep changes, remove from stage) |
| `<leader>ghR` | **Reset Buffer** (Discard ALL changes in file) |
| `<leader>ghb` | Blame line |
