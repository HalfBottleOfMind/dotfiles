local config = {}

config.gopls = {
	cmd = { 'gopls' },
	filetypes = { 'go', 'gomod', 'gowork', 'gotmpl', },
	root_dir = require('lspconfig/util').root_pattern('go.work', 'go.mod', '.git'),
	settings = {
		gopls = {
			completeUnimported = true,
			usePlaceholders = true,
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
}

config.lua_ls = {
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = {
					'vim',
				},
				disable = {
					'different-requires',
				},
				workspaceEvent = 'OnChange',
				workspaceDelay = 3000,
			},
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME,
				},
			},
		},
	},
}

config.intelephense = {}
config.phpactor = {}
config.vue_language_server = {}

config.clangd = {
}

return config
