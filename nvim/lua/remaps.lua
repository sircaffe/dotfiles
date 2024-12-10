vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('n', '<leader>w', function() vim.cmd('w') end)

-- Telescope Keymaps
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>lb', builtin.buffers, {})
vim.keymap.set('n', '<leader>lk', builtin.find_files, {})
