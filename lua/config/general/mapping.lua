-- config mappings
vim.api.nvim_set_keymap('i','<leader><leader>','<Esc>', { noremap = true })
-- vim.api.nvim_set_keymap('n','<leader>ev',':vsplit $MYVIMRC<Cr>', { noremap = true })
vim.api.nvim_set_keymap('n','<leader>sv',':source $MYVIMRC<Cr>', { noremap = true })
vim.api.nvim_set_keymap('t','<Esc>', '<C-\\><C-n>', { noremap = true })

-- disable annoying commands
vim.api.nvim_set_keymap('n','Q','<Nop>', { noremap = true })
vim.api.nvim_set_keymap('','ZZ','<Nop>', { noremap = true })
vim.api.nvim_set_keymap('','ZQ','<Nop>', { noremap = true })

-- others keymaps
vim.api.nvim_set_keymap('n',
    '<leader>3TT',
    [[<cmd>tabnew<CR><cmd>terminal<CR><cmd>split<CR><cmd>terminal<CR><cmd>vsplit<CR><cmd>terminal<CR>]],
    { noremap = true, silent = true })

vim.api.nvim_set_keymap(
    'n',
    '<leader>blam',
    [[<cmd>GitBlameToggle<CR>kj]],
    { noremap = true, silent = false })


