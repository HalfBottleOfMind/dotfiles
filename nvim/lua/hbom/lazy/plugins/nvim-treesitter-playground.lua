return {
	'nvim-treesitter/playground',
	config = function()
    local ts = require('nvim-treesitter.configs')
    ts.setup {
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      playground = {
        enable = true,
        disable = {},
        updatetime = 25,
        persist_queries = false,
        keybindings = {
          -- probably not relevant
        },
      },
    }
  end,
}
