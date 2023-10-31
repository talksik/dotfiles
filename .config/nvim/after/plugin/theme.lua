vim.o.background = 'light'

require('solarized').setup({
  theme = 'default',   -- or 'neo'
  styles = {
    comments = { italic = true, bold = false },
    functions = { italic = true },
    variables = { italic = false },
  }
})

vim.cmd.colorscheme = 'solarized'

function test()
  print('test')
end
