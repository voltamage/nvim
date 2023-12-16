return {
  'stevearc/conform.nvim',
  event = {
    'BufReadPre',
    'BufNewFile',
  },
  config = function()
    local conform = require('conform')
    conform.setup({
      formatters_by_ft = {
        bash = { 'shfmt' },
        lua = { 'stylua' },
        python = { 'isort', 'black' },
        rust = { 'rustfmt' },
        sh = { 'shfmt' },
        yaml = { 'prettierd' },
        zsh = { 'shfmt' },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
      },
    })
  end,
}
