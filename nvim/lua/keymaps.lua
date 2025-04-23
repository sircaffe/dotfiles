vim.g.mapleader = ' '

-- >> Navigation
vim.keymap.set('n', '<leader>fe', ':Ex<cr>')
vim.keymap.set('n', '<leader>fb', ':ls<cr>')
vim.keymap.set('n', '<leader>w', ':w<cr>')
vim.keymap.set('n', '<leader>q', ':q<cr>')

vim.keymap.set('n', '<leader>tt', ':tabnew<cr>')
vim.keymap.set('n', '<leader>ty', ':tabn<cr>')
vim.keymap.set('n', '<leader>tr', ':tabp<cr>')

-- >> Quickfix
vim.keymap.set('n', '<leader>cc', ':make<cr>')
vim.keymap.set('n', '<leader>cm', ':set makeprg=')
vim.keymap.set('n', '<leader>co', ':copen<cr>')
vim.keymap.set('n', '<leader>cx', ':cclose<cr>')
vim.keymap.set('n', '<leader>cj', ':cnext<cr>')
vim.keymap.set('n', '<leader>ck', ':cprevious<cr>')
