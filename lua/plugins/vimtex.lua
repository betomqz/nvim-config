-- LaTeX plugin
vim.pack.add {
    { src = 'https://github.com/lervag/vimtex' },
}

-- VimTeX settings
vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_view_skim_sync = 1
vim.g.vimtex_view_skim_activate = 1
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_quickfix_ignore_filters = { 'Package hyperref Warning: Token not allowed in a PDF string' }
vim.g.vimtex_format_enabled = 1
vim.g.tex_flavor = 'latex'
