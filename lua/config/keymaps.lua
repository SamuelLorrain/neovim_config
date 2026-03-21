-- Return to normal mode
vim.keymap.set('i','<leader><leader>','<Esc>')

-- Disable annoying keymaps
vim.keymap.set('n','Q','<Nop>')
vim.keymap.set('','ZZ','<Nop>')
vim.keymap.set('','ZQ','<Nop>')

local leave_terminal = '<C-\\><C-n>'
vim.keymap.set('t','<Esc>', leave_terminal)

local better_j = "gj"
vim.keymap.set('n','j', better_j)
local better_k = "gk"
vim.keymap.set('n','k', better_k)

local open_config_explorer = "<C-w>v:e~/.config/nvim/"
vim.keymap.set('n', '<leader>cf', open_config_explorer ..'<CR>')

local open_term_in_new_tab = [[<cmd>tabnew<CR><Cmd>terminal<CR>a]]
vim.keymap.set('n', '<leader>TT', open_term_in_new_tab .. "<CR>a")

local open_3_terms_in_new_tab = [[<cmd>tabnew<CR><Cmd>terminal<CR><Cmd>split<CR><Cmd>terminal<CR><Cmd>vsplit<CR><Cmd>terminal<CR>]]
vim.keymap.set('n', '<leader>3TT', open_3_terms_in_new_tab)

local run_server = [[<Cmd>tabnew<CR><Cmd>terminal<CR>acd ~/Developer/backend && venva && runserver<CR><Cmd>vsplit<CR><Cmd>terminal<CR>cd ~/Developer/api && venva && runserver<CR><Cmd>tabprevious<CR>]]
vim.keymap.set('n', '<leader>RUNS', run_server)
