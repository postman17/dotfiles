vim.fn.sign_define("DiagnosticSignError",
	{text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn",
	{text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo",
	{text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint",
	{text = "󰌵", texthl = "DiagnosticSignHint"})


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
          n = { 
		  q = actions.close
	  },
        },
   }
}
