return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'lua', 'go', 'php', 'markdown', 'sql' },
    auto_install = true,
  },
}
