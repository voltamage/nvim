return {
  'RRethy/vim-illuminate',
  config = function()
    require('illuminate').configure({
      providers = {
        -- it normally goes lsp, treesitter, and regex
        'regex',
        'lsp',
        'treesitter',
      },
    })
  end,
}
