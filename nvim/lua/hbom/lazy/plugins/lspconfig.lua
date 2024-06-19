return {
	'neovim/nvim-lspconfig',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
	},
	config = function()
		local lspconfig = require('lspconfig')
		local config = require('hbom.lazy.plugins.configs.lspconfig')
		local servers = {
			'gopls',
			'lua_ls',
			-- 'intelephense',
			'phpactor',
			'clangd',
		}

		for _, lsp in ipairs(servers) do
			config[lsp].capabilities = require('cmp_nvim_lsp').default_capabilities()
			lspconfig[lsp].setup(config[lsp])
		end

		vim.api.nvim_create_autocmd('LspAttach', {
			group = vim.api.nvim_create_augroup('UserLspConfig', {}),
			callback = function(ev)
				-- Enable completion triggered by <c-x><c-o>
				vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

				-- Buffer local mappings.
				-- See `:help vim.lsp.*` for documentation on any of the below functions
				local opts = { buffer = ev.buf }
				vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
				vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
				vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
				vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
				vim.keymap.set('n', '<Leader>k', vim.lsp.buf.signature_help, opts)
				vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
				vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, opts)
				vim.keymap.set({ 'n', 'v' }, '<Leader>ca', vim.lsp.buf.code_action, opts)
				vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
				vim.keymap.set('n', '<Leader>f', function()
					vim.lsp.buf.format { async = true }
				end, opts)
			end,
		})
	end,
}
