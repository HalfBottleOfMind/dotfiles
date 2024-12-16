vim.keymap.set('n', '<leader><leader>x', '<cmd>source %<CR>', { desc = 'Execute current file (Lua)' })
vim.keymap.set('n', '<leader>x', ':.lua<CR>', { desc = 'Execute current line (Lua)' })
vim.keymap.set('v', '<leader>x', ':lua<CR>', { desc = 'Execute selected lines (Lua)' })

vim.keymap.set('n', '-', '<CMD>Oil<CR>')

-- Telescope
vim.keymap.set('n', '<leader>ff', '<CMD>Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', '<CMD>Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>fb', '<CMD>Telescope buffers<CR>')
vim.keymap.set('n', '<leader>fh', '<CMD>Telescope help_tags<CR>')
