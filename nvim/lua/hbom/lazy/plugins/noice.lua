-- TODO: присмотреться
return {
	'folke/noice.nvim',
	enabled = true,
	event = 'VeryLazy',
	dependencies = {
		'MunifTanjim/nui.nvim',
		'rcarriga/nvim-notify',
	},
	config = function()
		require('notify').setup({
			background_colour = '#000000',
		})
		require('noice').setup()

		vim.keymap.set('n', '<space>d', function()
			require('noice').cmd('dismiss')
		end)
	end
}
