local builtin = require('telescope.builtin')

local telescopeConfig = require("telescope.config")

-- Clone the default Telescope configuration
local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

-- I want to search in hidden/dot files.
table.insert(vimgrep_arguments, "--hidden")
-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")
table.insert(vimgrep_arguments, "--no-ignore-parent")
-- ignore node_modules
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/node_modules/*")

require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                   -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true,    -- override the file sorter
      case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    }
  },
  pickers = {
    find_files = {
      -- hidden = true,
      find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*", "--glob", "!**/node_modules/*", "--no-ignore-parent" },
    },
  },
  defaults = {
    vimgrep_arguments = vimgrep_arguments,

    mappings = {
      -- normal mode
      n = {
        ['<c-d>'] = require('telescope.actions').delete_buffer
      },
      -- insert mode
      i = {
        ['<c-d>'] = require('telescope.actions').delete_buffer
      }
    }
  },
}

require('telescope').load_extension('emoji')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>sw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>ss', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>st', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>s/', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>mm', builtin.resume, {})

-- launch `:Telescope emoji` on pressing `<leader>se`
vim.keymap.set('n', '<leader>se', function()
  vim.cmd('Telescope emoji')
end, {})
