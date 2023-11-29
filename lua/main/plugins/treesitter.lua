return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = {
      'hypr',
    },
    auto_install = true,
    highlight = {
      enable = true,
    },
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
    local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
    parser_config.hypr = {
      install_info = {
        url = 'https://github.com/luckasRanarison/tree-sitter-hypr',
        files = { 'src/parser.c' },
        branch = 'master',
      },
      filetype = 'hypr',
    }
  end,
}
