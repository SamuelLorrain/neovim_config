local telescope = require'telescope'

telescope.setup {
    defaults = {
        color_devicons = true,
        prompt_prefix = '> ',
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case"
        }
    }
}
telescope.load_extension('projects')
-- telescope.load_extension('fzf')

-- Local Module
local M = {}
-- search_dotfiles helper
M.search_dotfiles = function()
     require('telescope.builtin').find_files({
         prompt_title = "< VIM CONFIG >",
         cwd = '~/.config/nvim/'
    })
end

-- function meant to help
-- the creation of a telescope
-- keymap
local set_telescope_keymap = function(keymap, command, options)
    options = options or ''
    local commandString =  [[<cmd>Telescope ]] .. command .. ' ' .. options .. [[<CR>]]
    vim.api.nvim_set_keymap('n', keymap, commandString, {noremap = true, silent = true});
end

set_telescope_keymap('<leader>ta', 'live_grep') -- TODO same as after
set_telescope_keymap('<leader>tr', 'buffers')
set_telescope_keymap('<leader>tz', 'find_files') -- TODO find a way to use . files & non gitignore files
set_telescope_keymap('<leader>te', 'file_browser') -- TODO same as above
set_telescope_keymap('<leader>tp', 'projects')

set_telescope_keymap('<leader>tvc', 'commands')
set_telescope_keymap('<leader>tvm', 'marks')
set_telescope_keymap('<leader>tvr', 'registers')
set_telescope_keymap('<leader>tvh', 'help_tags')

set_telescope_keymap('<leader>tgs', 'git_status')
set_telescope_keymap('<leader>tgt', 'git_stash')
set_telescope_keymap('<leader>tgb', 'git_branches')
set_telescope_keymap('<leader>tgc', 'git_commits')

set_telescope_keymap('<leader>tt', 'treesitter')

-- key mapping for local command
vim.api.nvim_set_keymap('n',
        '<leader>ev',
        [[<cmd>lua require('config.plugins.telescope').search_dotfiles()<CR>]],
        {noremap = true, silent = true});

-- exporting local commands
return M
