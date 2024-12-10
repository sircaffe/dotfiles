local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })

Plug('tpope/vim-fugitive')

Plug('morhetz/gruvbox')

Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

vim.call('plug#end')

vim.cmd('silent! colorscheme gruvbox')

require('plugins.treesitter')
