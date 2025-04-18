return {
	'adalessa/laravel.nvim',
	enabled = false,
	dependencies = {
		'nvim-telescope/telescope.nvim',
		'tpope/vim-dotenv',
		'MunifTanjim/nui.nvim',
		'nvimtools/none-ls.nvim',
	},
	cmd = { 'Sail', 'Artisan', 'Composer', 'Npm', 'Laravel' },
	keys = {
		{ '<leader>la', ':Laravel artisan<cr>' },
		{ '<leader>lr', ':Laravel routes<cr>' },
		{ '<leader>lm', ':Laravel related<cr>' },
	},
	event = { 'VeryLazy' },
	config = true,
}
