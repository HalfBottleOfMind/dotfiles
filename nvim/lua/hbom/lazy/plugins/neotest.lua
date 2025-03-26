-- TODO: присмотреться
return {
	'nvim-neotest/neotest',
	enabled = false,
	dependencies = {
		'nvim-lua/plenary.nvim',
		'antoinemadec/FixCursorHold.nvim',
		'nvim-treesitter/nvim-treesitter',
		'nvim-neotest/nvim-nio',

		'nvim-neotest/neotest-go',
		'halfbottleofmind/neotest-phpunit', -- TODO: change to original repository after PR merge
	},
	config = function()
		local neotest_ns = vim.api.nvim_create_namespace('neotest')
		vim.diagnostic.config({
			virtual_text = {
				format = function(diagnostic)
					local message = diagnostic.message:gsub('\n', ' '):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
					return message
				end,
			},
		}, neotest_ns)

		require('neotest').setup({
			adapters = {
				require('neotest-go'),
				require('neotest-phpunit')({
					phpunit_cmd = './vendor/bin/phpunit',
					filter_dirs = { 'vendor' },
				}),
			},
		})

		vim.keymap.set('n', '<leader>ts', function()
			require('neotest').summary.toggle()
		end)
	end,
}
