-- Return to normal mode
vim.api.nvim_set_keymap('i','<leader><leader>','<Esc>', { noremap = true })

-- Disable annoying keymaps
vim.api.nvim_set_keymap('n','Q','<Nop>', { noremap = true })
vim.api.nvim_set_keymap('','ZZ','<Nop>', { noremap = true })
vim.api.nvim_set_keymap('','ZQ','<Nop>', { noremap = true })

-- <esc> to leave terminal
vim.api.nvim_set_keymap('t','<Esc>', '<C-\\><C-n>', { noremap = true })

-- open explorer to the config folder
vim.api.nvim_set_keymap(
'n',
'<leader>cf',
'<C-w>v:e~/.config/nvim/<CR>',
{ noremap = true }
);

