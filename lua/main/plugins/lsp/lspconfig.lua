return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'hrsh7th/cmp-nvim-lsp'
  },
  config = function()
    local lspconfig = require('lspconfig')

    -- configure bash server
    lspconfig["bashls"].setup({
	    filetypes = {
        'bash',
        'sh',
        'zsh',
      },
    })

    -- configure json and more server
    lspconfig["biome"].setup({
    })

    -- configure lua server
    lspconfig["lua_ls"].setup({
      settings = {
        Lua = {
          -- make the language server recognize "vim" global
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    -- configure python server
    lspconfig["pyright"].setup({
    })

    -- configure toml server
    lspconfig["taplo"].setup({
    })

    -- configure yaml server
    lspconfig["yamlls"].setup({
    })
  end,
}
