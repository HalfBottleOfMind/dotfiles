return {
  "nvim-lualine/lualine.nvim",
  enabled = false,
  event = "ColorScheme",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require('lualine').setup {
      sections = {
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
      },
    }
  end,
}
