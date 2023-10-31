require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'codedark',
  },
  sections = {
    lualine_a = {
      {
        'mode',
      },
    },
    lualine_b = {
      {
        'filename',
        -- path = 3,
      },
    },
    lualine_c = {
      {
        'diff'
      },
      {
        'diagnostics'
      },
    },
    -- lualine_x = {
    -- },
    -- lualine_y = {
    -- },
    lualine_z = {
      {
        'datetime',
        -- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
        style = '%H:%M:%S',
      },
      {
        'filesize'
      }
    }
  }
}
