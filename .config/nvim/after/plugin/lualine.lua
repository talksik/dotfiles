require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'material',
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
    },
    -- lualine_x = {
    -- },
    -- lualine_y = {
    -- },
    lualine_z = {
      'filesize'
    }
  }
}
