return {
  'saghen/blink.cmp',
  enabled = true,
  -- TODO: check this and find out if I need it
  -- dependencies = 'rafamadriz/friendly-snippets',
  version = '1.*',
  opts = {
    keymap = {
      preset = 'none',
      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
  },
  opts_extend = { "sources.default" }
}
