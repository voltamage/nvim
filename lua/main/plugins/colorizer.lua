return {
  'NvChad/nvim-colorizer.lua',
  config = function()
    require('colorizer').setup({
      filetypes = { '*' },
      user_default_options = {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        AARRGGBB = true, -- 0xAARRGGBB hex codes
        names = false, -- "Name" codes like Blue or blue
        hsl_fn = true, -- CSS hsl() and hsla() functions
        rgb_fn = true, -- CSS rgb() and rgba() functions
      },
    })
  end,
}
