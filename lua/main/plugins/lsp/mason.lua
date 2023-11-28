return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    local mason = require('mason')
    local mason_lspconfig = require('mason-lspconfig')
    mason.setup()
    mason_lspconfig.setup({
      ensure_installed = {
        'bashls',   -- bash, sh, zsh
        'biome',    -- json but supports more
        'lua_ls',   -- lua
        'pyright',  -- python
        'taplo',    -- toml
        'yamlls',   -- yaml
      },
      automatic_installation = true, -- not the same as ensure_installed
    })
  end,
}
