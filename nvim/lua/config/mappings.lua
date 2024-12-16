-- Execute Lua code
vim.keymap.set('n', '<leader><leader>x', '<cmd>source %<CR>', { desc = 'Execute current file (Lua)' })
vim.keymap.set('n', '<leader>x', ':.lua<CR>', { desc = 'Execute current line (Lua)' })
vim.keymap.set('v', '<leader>x', ':lua<CR>', { desc = 'Execute selected lines (Lua)' })

-- Oil
vim.keymap.set('n', '-', '<CMD>Oil<CR>')

-- Telescope
vim.keymap.set('n', '<leader>ff', '<CMD>Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', '<CMD>Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>fb', '<CMD>Telescope buffers<CR>')
vim.keymap.set('n', '<leader>fh', '<CMD>Telescope help_tags<CR>')

-- Windows navigation
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

-- Quickfix navigation
vim.keymap.set('n', '<M-j>', ':cnext<CR>')
vim.keymap.set('n', '<M-k>', ':cprev<CR>')

-- Terminal
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')
vim.keymap.set('n', '<leader>t', function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd('J')
  vim.api.nvim_win_set_height(0, 10)
end, { desc = 'Open new terminal in horizontal split' })
