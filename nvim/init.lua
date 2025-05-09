vim.cmd[[
    set termguicolors
    set number
    set relativenumber
    set cursorline
    set nocompatible
    set clipboard=unnamedplus

    filetype plugin on
    set omnifunc=ccomplete#Complete

    set tabstop=4
    set shiftwidth=0
    set autoindent
    set expandtab
]]

-- Keymaps
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>fe", ":Ex<cr>")
vim.keymap.set("n", "<leader>w", ":w<cr>")

-- quickfix
vim.keymap.set("n", "<leader>cO", ":copen<cr>")
vim.keymap.set("n", "<leader>cC", ":cclose<cr>")
vim.keymap.set("n", "<leader>cN", ":cnext<cr>")
vim.keymap.set("n", "<leader>cP", ":cprevious<cr>")

-- something closer to emacs compile command
vim.keymap.set("n", "<leader>!", function()
    vim.ui.input({
        prompt = 'shell command: ',
        completion = 'shellcmdline',
    }, function(input)
        if input ~= nil then
            vim.cmd(":belowright split |term "..input) 
        end
    end)
end)

-- Autocmds
vim.cmd[[
    autocmd BufReadPre *.asm let g:asmsyntax = "fasm"
]]

-- Plugins
local vim = vim
local Plug = vim.fn["plug#"]

vim.call("plug#begin")

-- Plug "blazkowolf/gruber-darker.nvim"
-- Plug "p00f/alabaster.nvim"

vim.call("plug#end")

vim.cmd.colorscheme("habamax")
