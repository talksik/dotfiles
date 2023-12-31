local harpoon = require("harpoon")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

harpoon.setup({
  mark_branch = true,
})

vim.keymap.set("n", "<C-q>", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-f>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-g>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-y>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-m>", function() ui.nav_file(4) end)
