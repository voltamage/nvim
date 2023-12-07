return {
  'RRethy/vim-illuminate',
  config = function()
    require('illuminate').configure({
      providers = {
        -- it normally goes lsp, treesitter, and regex
        'lsp',
        'treesitter',
        'regex',
      },
    })
  end,
}
