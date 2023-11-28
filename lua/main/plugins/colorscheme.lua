return {
  'sainnhe/gruvbox-material',
  priority = 1000,
  config = function()
    vim.opt.termguicolors = true -- required for transparency, may not work with tty
    vim.cmd.colorscheme('gruvbox-material')
  end,
}
