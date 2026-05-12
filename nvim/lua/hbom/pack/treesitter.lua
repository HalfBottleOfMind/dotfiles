vim.pack.add({'https://github.com/nvim-treesitter/nvim-treesitter'})

vim.api.nvim_create_autocmd('FileType', {
  pattern = {
     '*',
  },
  callback = function()
    vim.treesitter.start()
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end
})
