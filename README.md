# My Neovim configuration

This configuration is based on [`kickstart.nvim`](https://github.com/nvim-lua/kickstart.nvim), with a few minor personal modifications and fixes.

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
