vim.pack.add({
	'https://github.com/stevearc/oil.nvim',
	'https://github.com/nvim-tree/nvim-web-devicons',
})

require('oil').setup({
	default_file_explorer = true,
	columns = {
		'icon',
	},
	keymaps = {
		['<C-h>'] = false,
		['<C-l>'] = false,
	},
	view_options = {
		show_hidden = true,
		is_always_hidden = function(name, _)
			return name == '.git' or name == '..'
		end,
	},
})

-- Keymaps
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory'})
