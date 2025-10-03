return {
  "nvim-treesitter/nvim-treesitter",
  enabled = true,
  build = ":TSUpdate",
  lazy = false,
  opts = {
    ensure_installed = { "lua", "go", "php", "markdown", "sql", "blade", "html" },
    -- auto_install = true,
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end
}
