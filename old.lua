--vim.g.loaded_netrw = 1        -- NOTE: this might help with neo-tree
--vim.g.loaded_netrwPlugin = 1  -- NOTE: this might help with neo-tree

--vim.o.cmdheight = 2 -- NOTE: allows hardtime to display alongside modes
vim.o.termguicolors = true -- NOTE: relied on by neo-tree

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- {
  --   'NvChad/nvim-colorizer.lua',
  --   config = function()
  --     require('colorizer').setup(nil,{
  --       RGB       = true,
  --       RRGGBB    = true,
  --       RRGGBBAA  = true,
  --       hsl_fn    = true,
  --       mode      = 'background',
  --       names     = false,
  --       rgb_fn    = true,
  --     })
  --   end,
  -- },
  {
    'alker0/chezmoi.vim',
    lazy = false,
    init = function()
      vim.g['chezmoi#source_dir_path'] = '~/dotfiles/chezmoi'
      vim.g['chezmoi#use_tmp_buffer'] = true
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-treesitter').setup({ 'nvim-treesitter/nvim-treesitter', build = 'TSUpdate' })
    end,
  },
  -- {
  --   'nvim-neo-tree/neo-tree.nvim',
  --   branch = 'v3.x',
  --   dependencies = {
  --     'nvim-tree/nvim-web-devicons',
  --     'nvim-lua/plenary.nvim',
  --     'MunifTanjim/nui.nvim',
  --   },
  --   config = true,
  -- },
  -- {
  --   'folke/trouble.nvim',
  --   dependencies = {
  --     'nvim-tree/nvim-web-devicons'
  --   },
  --   opts = {},
  -- },
  {
    'nvim-neorg/neorg',
    build = ':Neorg sync-parsers', -- BUG: does not seem to trigger properly, complains on first run
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
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
      vim.wo.conceallevel = 2 -- TODO: difference between vim.o and vim.wo
    end,
  },
  -- {
  -- 'luckasRanarison/tree-sitter-hypr',
  -- },
  --{
  --  'ellisonleao/glow.nvim',
  --  config = true,
  --  cmd = 'Glow'
  --},
  -- {
  --   'folke/twilight.nvim', -- BUG: does nothing
  --   config = true,
  -- },
  -- {
  --   'lcheylus/overlength.nvim',
  --   config = true,
  -- },
  -- {
  --   'xiyaowong/transparent.nvim',
  --   config = function()
  --     require('transparent').setup {
  --       extra_groups = {
  --         'NeoTreeNormal',
  --         'NeoTreeNormalNC',
  --         'NormalFloat',
  --       },
  --    }
  --   end,
  -- },
  -- {
  --   "m4xshen/hardtime.nvim",
  --   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  --   opts = {
  --     enabled = false,
  --   }
  -- },
  -- {
  -- 'nvim-pack/nvim-spectre',
  --   dependencies = {
  --     'nvim-lua/plenary.nvim'
  --   },
  -- config = function()
  --   require('spectre').setup({
  --     live_update = true,
  --     replace_vim_cmd = 'cdfo',
  --     })
  --   end,
  -- },
  -- {
  -- 'akinsho/toggleterm.nvim',
  -- config = function()
  --   require('toggleterm').setup({
  --     shade_terminals = false,
  --     })
  --   end,
  -- },
  defaults = {
    lazy = true,
  },
})

-- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
-- parser_config.hypr = {
--   install_info = {
--     url = "https://github.com/luckasRanarison/tree-sitter-hypr",
--     files = { "src/parser.c" },
--     branch = "master",
--   },
--   filetype = "hypr",
-- }
