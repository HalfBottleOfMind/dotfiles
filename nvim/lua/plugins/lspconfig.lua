return {
  'neovim/nvim-lspconfig',
  dependencies = {
    {
      'folke/lazydev.nvim',
      ft = 'lua',
      opts = { library = { { path = '${3rd}/luv/library', words = { 'vim%.uv' } } } },
    },
    'saghen/blink.cmp',
  },
  opts = {
    servers = {
      lua_ls = {},
      phpactor = {},
      gopls = {
        settings = {
          gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
            hints = {
              rangeVariableTypes = true,
              parameterNames = true,
              constantValues = true,
              assignVariableTypes = true,
              compositeLiteralFields = true,
              compositeLiteralTypes = true,
              functionTypeParameters = true,
            },
          },
        },
      },
    },
  },
  config = function(_, opts)
    local lspconfig = require('lspconfig')
    for server, config in pairs(opts.servers) do
      config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
      lspconfig[server].setup(config)
    end

    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client then return end

        keymapOpts = { buffer = args.buf }

        if client:supports_method('textDocument/formatting', 0) then
          -- Format the current buffer on save
          vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = args.buf,
            callback = function()
              vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
            end
          })

          vim.keymap.set('n', 'grf', function()
            vim.lsp.buf.format { async = true }
          end, keymapOpts)
        end

        vim.keymap.set('n', 'grd', vim.lsp.buf.definition, keymapOpts)
      end
    })
  end,
}
