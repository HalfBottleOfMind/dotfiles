-- TODO: присмотреться
return {
	'folke/flash.nvim',
	enabled = true,
	event = 'VeryLazy',
	keys = {
		{ '<leader>s', mode = { 'n' }, function() require('flash').jump() end, desc = 'Flash' },
	},
}
