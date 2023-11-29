return {
  'lmburns/lf.nvim',
  dependencies = {
    'toggleterm.nvim',
  },
  config = function()
    require('lf').setup({
      border = 'single',
      winblend = 0,
    })
  end,
}
