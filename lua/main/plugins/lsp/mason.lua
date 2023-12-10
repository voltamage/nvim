return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    local mason = require('mason')
    local mason_lspconfig = require('mason-lspconfig')
    local mason_tool_installer = require('mason-tool-installer')
    mason.setup({
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    })
    mason_lspconfig.setup({
      ensure_installed = {
        'bashls', -- bash, sh, zsh
        'lua_ls', -- lua
        'yamlls', -- yaml
      },
      automatic_installation = true, -- not the same as ensure_installed
    })
    mason_tool_installer.setup({
      ensure_installed = {
        'prettierd', -- yaml format
        'selene', -- lua lint
        'shellcheck', -- bash, sh, zsh lint
        'shfmt', -- bash, sh, zsh format
        'stylua', -- lua format
        'yamllint', -- yaml lint
      },
    })
  end,
}
