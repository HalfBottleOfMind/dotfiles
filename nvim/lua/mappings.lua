vim.g.mapleader = ' '

vim.keymap.set('n', '<leader><leader>x', 'cmd sourse %<cr>', {desc = 'source current file'})
vim.keymap.set('n', '<leader>x', ':.lua<cr>', {desc = 'execute current line'})
vim.keymap.set('v', '<leader>x', ':lua<cr>', {desc = 'execute selection'})
