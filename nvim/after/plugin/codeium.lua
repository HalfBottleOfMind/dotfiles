vim.keymap.set('n', '<leader>cc', function() return vim.fn['codeium#Chat']() end, { expr = true, silent = false, desc = 'Codeium Chat' })

-- TODO: disable default mappings and remap to custom ones
