return {
	'catppuccin/nvim',
	enabled = false,
	name = 'catppuccin',
	priority = 1000,
	config = function ()
		require('catppuccin').setup {
			flavour = 'latte',
			dim_incative = {
				enabled = true,
			},
			term_colors = true,
		}

		vim.cmd.colorscheme 'catppuccin'
	end
}
