return {
	'nvim-neo-tree/neo-tree.nvim',
	enabled = false,
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		'MunifTanjim/nui.nvim',
	},
	config = function()
		require('neo-tree').setup(require('hbom.lazy.plugins.configs.neo-tree'))

		vim.keymap.set('n', '<leader>nt', ':Neotree toggle<CR>', {})
	end,
}
