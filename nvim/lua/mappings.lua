vim.g.mapleader = ' '

vim.keymap.set({'n', 't'}, '<C-h>', ':wincmd h<CR>', { desc = 'Go to left window'})
vim.keymap.set({'n', 't'}, '<C-l>', ':wincmd l<CR>', { desc = 'Go to right window'})
vim.keymap.set({'n', 't'}, '<C-j>', ':wincmd j<CR>', { desc = 'Go to bottom window'})
vim.keymap.set({'n', 't'}, '<C-k>', ':wincmd k<CR>', { desc = 'Go to top window'})
