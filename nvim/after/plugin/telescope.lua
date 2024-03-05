local actions = require('telescope.actions')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<leader>r', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require('telescope').setup({
  defaults = {
    file_ignore_patterns = {
      "node_modules"
    },
    mappings = {
      i = {
        ["<C-j>"] = {
          actions.move_selection_next,
          type = "action",
          opts = { nowait = true, silent = true }
        },
        ["<C-k>"] = {
          actions.move_selection_previous,
          type = "action",
          opts = { nowait = true, silent = true }
        },
      }
    },
  },
})
