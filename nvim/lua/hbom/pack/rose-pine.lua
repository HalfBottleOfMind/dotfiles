vim.pack.add({{
	src = 'https://github.com/rose-pine/neovim',
	name = 'rose-pine',
}})

require('rose-pine').setup({
	variant = 'dawn',
	dim_inactive_windows = true,
})

vim.cmd.colorscheme 'rose-pine'
