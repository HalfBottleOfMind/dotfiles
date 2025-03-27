return {
  "exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  opts = {
    enable_cmp_source = false,
    virtual_text = {
      enabled = true,
      key_bindings = {
        accept = "<C-y>",
        accept_word = "<C-w>",
        accept_line = "<C-l>",
        next = "<C-n>",
        prev = "<C-p>",
        dismiss = "<C-e>"
      }
    },
  },
}
