vim.o.background = 'light'

require('solarized').setup({
  theme = 'default', -- or 'neo'
  styles = {
    comments = { italic = true, bold = false },
    functions = { italic = true, bold = true },
    variables = { italic = false, bold = false },
    parameters = { italic = true, bold = false },
  }
})

vim.cmd.colorscheme = 'solarized'

function test()
  print('test')
end
