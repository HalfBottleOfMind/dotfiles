return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'luckasRanarison/tailwind-tools.nvim',
		'onsails/lspkind-nvim',
		'hrsh7th/cmp-vsnip',
		'hrsh7th/vim-vsnip',
	},
	config = function()
		local cmp = require('cmp')

		cmp.setup({
			snippet = {
				expand = function(args)
					vim.fn['vsnip#anonymous'](args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				['<C-Space>'] = cmp.mapping.complete(),
				['<CR>'] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luckasRanarison/tailwind-tools.nvim' },
			}, {
				{ name = 'buffer' },
			}),
			formatting = {
				format = require('lspkind').cmp_format({
					before = require('tailwind-tools.cmp').lspkind_format
				}),
			},
		})

		cmp.setup.filetype({ 'sql' }, {
			sources = {
				{ name = 'vim-dadbod-completion' },
				{ name = 'buffer' },
			}
		})
	end
}
