return {
  "stevearc/oil.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  opts = {
    default_file_explorer = true,
    columns = {
      "icon",
      -- "permissions",
      -- "size",
      -- "mtime"
    },
    keymaps = {
      ["<C-h>"] = false,
      ["<C-l>"] = false,
    },
    view_options = {
      show_hidden = true,
      is_always_hidden = function(name, buffer)
        local should_be_hidden = {}
        should_be_hidden[".git"] = true
        should_be_hidden[".."] = true

        if (should_be_hidden[name] ~= nil) then
          return true
        end

        return false
      end
    }
  },
}
