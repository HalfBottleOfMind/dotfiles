-- TODO: присмотреться
return {
	'nvim-neorg/neorg',
	enabled = true,
	config = function ()
		require('neorg').setup()
	end
}
