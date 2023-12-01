return {
  'xiyaowong/transparent.nvim',
  config = function() -- requires :TransparentEnable
    require('transparent').clear_prefix('BufferLine')
    require('transparent').clear_prefix('NeoTree')
  end,
}
