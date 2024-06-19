return {
	'williamboman/mason.nvim',
	opts = {
		ensure_installed = {
			'gopls',
			'lua-language-server',
			'golangci-lint',
			'phpactor',
			'clangd',
			'clang-format',
			'codelldb',
		},
	},
}
