return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    require("telescope").setup{
      defaults = {
        file_ignore_patters = {
          "node_modules",
          "vendor",
        },
      },
      pickers = {
        find_files = {
          theme = "ivy"
        },
        buffers = {
          sort_lastused = true,
          theme = "dropdown",
          previewer = false,
          mappings = {
            i = {
              ["<c-d>"] = require("telescope.actions").delete_buffer,
            },
          },
        },
      },
      extensions = {
        fzf = {},
      }
    }

    require("telescope").load_extension("fzf")
  end,
}
