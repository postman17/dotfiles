vim.g.mapleader = " "

vim.keymap.set('n', '<leader>e', '<Cmd>Neotree left toggle<CR>')
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('v', 'y', '"+y')
vim.keymap.set('n', '<leader>l', '<cmd>LazyGit<cr>')
vim.keymap.set('n', '<leader>g', '<cmd>BlameToggle window<cr>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
-- выделенный текст отступы через таб и шифт таб
local opts = { noremap = true, silent = true }
vim.keymap.set("n",    "<Tab>",         ">>",  opts)
vim.keymap.set("n",    "<S-Tab>",       "<<",  opts)
vim.keymap.set("v",    "<Tab>",         ">gv", opts)
vim.keymap.set("v",    "<S-Tab>",       "<gv", opts)


local kopts = {noremap = true, silent = true}

vim.api.nvim_set_keymap('n', 'n',
    [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
    kopts)
vim.api.nvim_set_keymap('n', 'N',
    [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
    kopts)
vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

--vim.api.nvim_set_keymap('n', '<Leader>l', '<Cmd>noh<CR>', kopts)
