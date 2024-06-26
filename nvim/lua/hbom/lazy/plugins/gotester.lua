return {
	'HalfBottleOfMind/gotester.nvim',
	dependencies = {
		'fatih/vim-go',
	},
	enabled = true,
	name = 'gotester',
	-- dev = true,
	opts = {},
	event = 'BufEnter *.go',
}
