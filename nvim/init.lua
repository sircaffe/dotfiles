vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 8
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.autochdir = true

vim.opt.termguicolors = true

require('keymaps')

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'nvim-treesitter/nvim-treesitter'

-- Plug 'catppuccin/nvim'

vim.call('plug#end')

require('plugs.nvim-cmp')


vim.cmd('colorscheme habamax')
