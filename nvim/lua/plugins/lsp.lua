return {
  'neovim/nvim-lspconfig',
  dependencies = {
    {
      'folke/lazydev.nvim',
      ft = 'lua',
      opts = { library = { { path = '${3rd}/luv/library', words = { 'vim%.uv' } } } },
    },
    'hrsh7th/cmp-nvim-lsp',
  },
  config = function()
    local default = require 'cmp_nvim_lsp'.default_capabilities()

    -- Lua
    require 'lspconfig'.lua_ls.setup {
      capabilities = default
    }

    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client then return end

        if client.supports_method('textDocument/formatting', 0) then
          -- Format the current buffer on save
          vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = args.buf,
            callback = function()
              vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
            end
          })
        end
      end
    })
  end,
}
