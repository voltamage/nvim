return {
  'neovim/nvim-lspconfig',
  event = {
    'BufReadPre',
    'BufNewFile',
  },
  config = function()
    local lspconfig = require('lspconfig')

    -- configure bash server
    lspconfig['bashls'].setup({
      filetypes = {
        'bash',
        'sh',
        'zsh',
      },
    })

    -- configure lua server
    lspconfig['lua_ls'].setup({
      settings = {
        Lua = {
          -- make the language server recognize "vim" global
          diagnostics = {
            globals = { 'vim' },
          },
        },
      },
    })

    -- configure yaml server
    lspconfig['yamlls'].setup({})
  end,
}
