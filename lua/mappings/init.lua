local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

--Window navigation
map('n', '<c-k>', ':wincmd k<CR>', opts)
map('n', '<c-j>', ':wincmd j<CR>', opts)
map('n', '<c-h>', ':wincmd h<CR>', opts)
map('n', '<c-l>', ':wincmd l<CR>', opts)

--Clipboard
map('v', '<leader>y', '"*y', opts)
map('v', '<leader>p', '"*p', opts)

--Moving lines
map('n', '<S-j>', ':m .+1<CR>==', opts)
map('n', '<S-k>', ':m -2<CR>', opts)
map('v', '<S-j>', ":m '>+1<CR>gv=gv", opts)
map('v', '<S-k>', ":m '<-2<CR>", opts)

--New line in normal mode
map('n', '<leader>o', 'o<Esc>', opts)
map('n', '<leader>O', 'O<Esc>', opts)

map('i', 'jk', '<esc>', opts)

--Turn off search highlight
map('n', ',<leader>', ':nohlsearch<CR>', opts)
