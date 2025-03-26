-- TODO: присмотреться
return {
	'nvim-treesitter/nvim-treesitter-context',
	config = function ()
		require('transparent').clear_prefix('TreesitterContext')
	end
}
