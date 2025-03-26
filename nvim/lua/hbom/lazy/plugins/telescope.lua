-- TODO: присмотреться
-- TODO: настроить маппинги
return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require('telescope').setup{
			defaults = {
				file_ignore_patters = {
					'node_modules',
					'vendor',
				},
			},
			pickers = {
				buffers = {
					sort_lastused = true,
					theme = 'dropdown',
					previewer = false,
					mappings = {
						i = {
							['<c-d>'] = 'delete_buffer',
						},
					},
				},
			},
		}
	end,
}
