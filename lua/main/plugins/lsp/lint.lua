return {
  'mfussenegger/nvim-lint',
  event = {
    'BufReadPre',
    'BufNewFile',
  },
  config = function()
    local lint = require('lint')
    lint.linters_by_ft = {
      bash = { 'shellcheck' },
      json = { 'jsonlint' },
      lua = { 'selene' },
      sh = { 'shellcheck' },
      yaml = { 'hadolint' },
      zsh = { 'shellcheck' },
      --      yaml = { 'yamllint' }, -- HACK: ansible-lint is being used by ansiblels, but it gets upset if declared here
    }
    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
