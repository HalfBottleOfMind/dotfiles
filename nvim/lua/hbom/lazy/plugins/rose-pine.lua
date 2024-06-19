return {
	'rose-pine/neovim',
	enabled = true,
	name = 'rose-pine',
	config = function()
		local config = {
			variant = 'dawn',
		}

		require('rose-pine').setup(config)

		vim.cmd [[colorscheme rose-pine]]
	end
}
