vim.pack.add({'https://github.com/ibhagwan/fzf-lua'})

local fzf = require('fzf-lua')

fzf.setup({
	winopts = {
		backdrop = 60,
		preview = {
			default = 'bat',
		},
	},
	previewers = {
		bat = {
			cmd = 'batcat',
			args = '--color=always --style=numbers,changes --theme=ansi',
		},
	},
	fzf_colors = {
		['bg'] = '-1',
	}
})

vim.keymap.set('n', '<leader>ff', fzf.files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', fzf.live_grep, { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', fzf.buffers, { desc = 'Find buffers' })
vim.keymap.set('n', '<leader>fo', fzf.oldfiles, { desc = 'Find old files' })
