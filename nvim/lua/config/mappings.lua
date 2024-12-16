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

-- Gitsigns
vim.keymap.set('n', '<leader>hs', require 'gitsigns'.stage_hunk, { desc = 'Stage hunk' })
vim.keymap.set('n', '<leader>hr', require 'gitsigns'.reset_hunk, { desc = 'Reset hunk' })
vim.keymap.set('n', '<leader>hS', require 'gitsigns'.stage_buffer, { desc = 'Stage buffer' })
vim.keymap.set('n', '<leader>hR', require 'gitsigns'.reset_buffer, { desc = 'Reset buffer' })
vim.keymap.set('n', '<leader>hp', require 'gitsigns'.preview_hunk, { desc = 'Preview hunk' })
vim.keymap.set('n', '<leader>hd', require 'gitsigns'.diffthis, { desc = 'Diff' })
vim.keymap.set('n', '<leader>hD', function() require 'gitsigns'.diffthis('~') end, { desc = 'Diff' })
