# My Neovim configuration

This configuration is based on [`kickstart.nvim`](https://github.com/nvim-lua/kickstart.nvim), with a few minor personal modifications and fixes.

## After installing telescope-fzf-native

Run `make` in its install directory to build the native sorter:
```sh
cd ~/.local/share/nvim/site/pack/core/opt/telescope-fzf-native.nvim
make
```

Without this, fzf sorting silently falls back to the Lua sorter (the `pcall` on `load_extension` swallows the error).

To verify the native sorter is active, run this inside Neovim:
```viml
lua print(require('telescope._extensions.fzf'))
```

If it prints a table (e.g. `table: 0x...`), the native sorter loaded correctly. If it prints `nil` or errors, `make` likely didn't run or failed.

## Troubleshooting Tree-sitter

If Tree-sitter highlighting or indentation is not working (or Neovim shows errors when opening certain file types), check the following:

### 1. Ensure `tree-sitter-cli` is installed

This configuration relies on `nvim-treesitter` for parser management. The `tree-sitter-cli` tool is required to compile parsers.

If you use Homebrew, install it with:

```sh
brew install tree-sitter-cli
```

After installing, restart Neovim and re-run the parser installation (see below).

### 2. Ensure the required language parsers are installed

Tree-sitter does not automatically install parsers. Each language must be installed explicitly.

Inside Neovim, run:

```
:TSInstall <language>
```

You can print the installed parsers with

```
:lua print(vim.inspect(require('nvim-treesitter').get_installed()))
```
