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
        'biome', -- json but supports more
        'lua_ls', -- lua
        'pyright', -- python NOTE: still lacks formatting and linter
        'taplo', -- toml
        'yamlls', -- yaml
      },
      automatic_installation = true, -- not the same as ensure_installed
    })
    mason_tool_installer.setup({
      ensure_installed = {
        'jsonlint', -- json lint
        'prettierd', -- json, yaml format
        'selene', -- lua lint
        'shellcheck', -- bash, sh, zsh lint
        'shfmt', -- bash, sh, zsh format
        'stylua', -- lua format
        'yamllint', -- yaml lint
      },
    })
  end,
}
