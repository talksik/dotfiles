require("no-neck-pain").setup({
  buffers = {
    scratchPad = {
      -- set to `false` to
      -- disable auto-saving
      enabled = true,
    },
    bo = {
      filetype = "md"
    },
  },
})

-- run :NoNeckPain on startup
vim.cmd("NoNeckPain")
