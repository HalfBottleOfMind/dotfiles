return {
  'rose-pine/neovim',
  enabled = true,
  name = 'rose-pine',
  config = function()
    local config = {
      variant = 'dawn',
      dark_variant = 'dawn',
      styles = {
        bold = true,
        italic = true,
        transparency = true,
      },
      highlight_groups = {
        -- NOTE: folke/todo-comments.nvim
        TodoBgTodo = { bg = 'foam', fg = 'base', bold = true },
        TodoFgTodo = { fg = 'text' },
        TodoBgFix = { bg = 'love', fg = 'base', bold = true },
        TodoFgFix = { fg = 'text' },
        TodoBgHack = { bg = 'gold', fg = 'base', bold = true },
        TodoFgHack = { fg = 'text' },
        TodoBgNote = { bg = 'foam', fg = 'base', bold = true },
        TodoFgNote = { fg = 'text' },
        TodoBgWarn = { bg = 'gold', fg = 'base', bold = true },
        TodoFgWarn = { fg = 'text' },
        TodoBgPerf = { bg = 'pine', fg = 'base', bold = true },
        TodoFgPerf = { fg = 'text' },
        TodoBgTest = { bg = 'pine', fg = 'base', bold = true },
        TodoFgTest = { fg = 'text' },
      },
    }

    require('rose-pine').setup(config)

    vim.cmd [[colorscheme rose-pine]]
  end
}
