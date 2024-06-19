return {
	'ta-tikoma/php.easy.nvim',
	config = true,
	keys = {
		{ '<leader>-b',   '<CMD>PHPEasyDocBlock<CR>' },
		{ '<leader>-r',   '<CMD>PHPEasyReplica<CR>' },
		{ '<leader>-c',   '<CMD>PHPEasyCopy<CR>' },
		{ '<leader>-d',   '<CMD>PHPEasyDelete<CR>' },
		{ '<leader>-ii',  '<CMD>PHPEasyInitInterface<CR>' },
		{ '<leader>-ic',  '<CMD>PHPEasyInitClass<CR>' },
		{ '<leader>-iac', '<CMD>PHPEasyInitAbstractClass<CR>' },
		{ '<leader>-it',  '<CMD>PHPEasyInitTrait<CR>' },
		{ '<leader>-ie',  '<CMD>PHPEasyInitEnum<CR>' },
		{ '<leader>-c',   '<CMD>PHPEasyAppendConstant<CR>',   mode = { 'n', 'v' } },
		{ '<leader>-p',   '<CMD>PHPEasyAppendProperty<CR>',   mode = { 'n', 'v' } },
		{ '<leader>-m',   '<CMD>PHPEasyAppendMethod<CR>',     mode = { 'n', 'v' } },
		{ '<leader>-_',   '<CMD>PHPEasyAppendConstruct<CR>' },
		{ '<leader>-a',   '<CMD>PHPEasyAppendArgument<CR>' },
	}
}
