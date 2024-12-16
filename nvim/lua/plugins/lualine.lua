-- Codeium status
local function codeium()
  local status = require('codeium.virtual_text').status()
  if status.state == 'idle' then
    return ''
  end
  if status.state == 'waiting' then
    return "Waiting..."
  end
  if status.state == 'completions' and status.total > 0 then
    return string.format('%d/%d', status.current, status.total)
  end
  return ' 0 '
end

return {
  "nvim-lualine/lualine.nvim",
  event = "ColorScheme",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'rose-pine',
      },
      sections = {
        lualine_x = { codeium, 'encoding', 'fileformat', 'filetype' },
      },
    }
  end,
}
