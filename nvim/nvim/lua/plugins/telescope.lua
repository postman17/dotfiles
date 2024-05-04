local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<Tab>', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, {})
vim.keymap.set('n', 'gr', builtin.lsp_references,
               {noremap = true, silent = true})
vim.keymap.set('n', 'gd', builtin.lsp_definitions,
               {noremap = true, silent = true})

local actions = require "telescope.actions"
require("telescope").setup {
	defaults = {
        mappings = {
          i = {
            ["<C-n>"] = actions.cycle_history_next,
            ["<C-p>"] = actions.cycle_history_prev,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-S-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            ["<ScrollWheelUp>"] = actions.preview_scrolling_up,
	["<ScrollWheelDown>"] = actions.preview_scrolling_down,
				["<C-f>"] = actions.results_scrolling_up,
			["<C-b>"] = actions.results_scrolling_down,
          },
          n = { q = actions.close },
        },
   }
}
