vim.pack.add({
	'https://github.com/neovim/nvim-lspconfig',
})

-- require('hbom.pack.lsp.intelephense')
require('hbom.pack.lsp.phpactor')
require('hbom.pack.lsp.lua_ls')

vim.keymap.set('n', 'grd', vim.lsp.buf.definition, { desc = 'LSP: Go to definition' })
