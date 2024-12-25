return {
  'Exafunction/codeium.nvim',
  enabled = true,
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- 'hrsh7th/nvim-cmp',
  },
  opts = {
    enable_cmp_source = false,
    virtual_text = {
      enabled = true,
      map_keys = true,
      key_bindings = {
        accept = '<M-a>',
        accept_word = '<M-w>',
        accept_line = '<M-l>',
        next = '<M-]>',
        prev = '<M-[>',
        clear = false,
      }
    }
  }
}
