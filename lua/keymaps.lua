-- Return to normal mode
vim.keymap.set('i','<leader><leader>','<Esc>', { noremap = true })

-- Disable annoying keymaps
vim.keymap.set('n','Q','<Nop>', { noremap = true })
vim.keymap.set('','ZZ','<Nop>', { noremap = true })
vim.keymap.set('','ZQ','<Nop>', { noremap = true })

-- <esc> to leave terminal
vim.keymap.set('t','<Esc>', '<C-\\><C-n>', { noremap = true })

-- open explorer to the config folder
vim.keymap.set(
'n',
'<leader>cf',
'<C-w>v:e~/.config/nvim/<CR>',
{ noremap = true }
);


--[[
-- Open a terminal in a new tab
--]]
vim.keymap.set('n',
    '<leader>TT',
    [[<cmd>tabnew<CR><Cmd>terminal<CR>a]],
    { noremap = true, silent = true })

--[[
-- Open 3 terminals in a new tab
--]]
vim.keymap.set('n',
    '<leader>3TT',
    [[<cmd>tabnew<CR><Cmd>terminal<CR><Cmd>split<CR><Cmd>terminal<CR><Cmd>vsplit<CR><Cmd>terminal<CR>]],
    { noremap = true, silent = true })

--[[
-- Toggle custom dev servers
--]]
vim.keymap.set(
    'n',
    '<leader>RUNS',
    [[<Cmd>tabnew<CR><Cmd>terminal<CR>acd ~/Developer/simulation && venva && cd src/ && runserver<CR>
<Cmd>split<CR><Cmd>terminal<CR>cd ~/Developer/learning && venva && runserver<CR>
<Cmd>vsplit<CR><Cmd>terminal<CR>BROWSER=none cd ~/Developer/frontend && runserver<CR>
<Cmd>tabprevious<CR>]],
    { noremap = true, silent = false })
