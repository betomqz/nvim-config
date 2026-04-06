-- You can easily change to a different colorscheme.
-- Change the name of the colorscheme plugin below, and then
-- change the command in the config to whatever the name of that colorscheme is.
--
-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
vim.pack.add {
  { src = 'https://github.com/catppuccin/nvim' },
}

---@diagnostic disable-next-line: missing-fields
require('catppuccin').setup {
  flavour = 'mocha',
  styles = {
    comments = {}, -- Default: `comments = { "italic" }`. We're disabling that.
  },
}

-- Load the colorscheme here.
vim.cmd.colorscheme 'catppuccin'
