vim.o.background = 'light'

require('solarized').setup({
  -- theme = 'neo'   -- or comment to use solarized default theme.
  styles = {
    comments = { italic = true, bold = false },
    functions = { italic = true },
    variables = { italic = false },
  }
})
