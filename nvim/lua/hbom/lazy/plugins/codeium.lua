return {
	'Exafunction/codeium.vim',
	event = 'BufEnter',
	config = function()
		vim.g.codeium_port_config = {
			web_server = 8888,
			chat_client = 9999,
		}
	end,
}
