return {
  'nvim-neorg/neorg',
  run = ':Neorg sync-parsers',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    vim.wo.conceallevel = 2 -- helps with neorg symbols, not sure if conceallevel = 3 better
    require('neorg').setup({
      load = {
        ['core.defaults'] = {}, -- Loads default behaviour
        ['core.concealer'] = {}, -- Adds pretty icons to your documents
        ['core.dirman'] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              dotfiles = '~/dotfiles/org',
            },
            default_workspace = 'dotfiles',
          },
        },
      },
    })
  end,
}
