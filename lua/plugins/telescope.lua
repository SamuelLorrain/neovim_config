-- require ripgrep and fd installed on the system!
return {
    "nvim-telescope/telescope.nvim",
    branch =  "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
        }
    },
    config = function()
        local telescope = require("telescope")
        telescope.setup({
            defaut = {
                color_devicons = true,
                prompt_prefix = '> ',
                path_display = {"truncate", "shorten"},
                winblend = 0
            },
            extensions = {
                fzf = {
                    fuzzy = true,                    -- false will only do exact matching
                    override_generic_sorter = true,  -- override the generic sorter
                    override_file_sorter = true,     -- override the file sorter
                    case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                }
            }
        })
        telescope.load_extension("fzf")

        vim.keymap.set('n', '<leader>ta', '<cmd>Telescope live_grep<CR>', {noremap=true, silent=true}) -- TODO same as after
        vim.keymap.set('n', '<leader>tr', '<cmd>Telescope buffers<CR>', {noremap=true, silent=true})
        vim.keymap.set('n', '<leader>tz', '<cmd>Telescope find_files<CR>', {noremap=true, silent=true}) -- TODO find a way to use . files & non gitignore files
        vim.keymap.set('n', '<leader>te', '<cmd>Telescope file_browser<CR>', {noremap=true, silent=true}) -- TODO same as above
        vim.keymap.set('n', '<leader>tp', '<cmd>Telescope projects<CR>', {noremap=true, silent=true}) -- TODO same as above
        vim.keymap.set('n', '<leader>tk', '<cmd>Telescope keymaps<CR>', {noremap=true, silent=true}) -- TODO same as above
        vim.keymap.set('n', '<leader>tt', '<cmd>Telescope<CR>', {noremap=true, silent=true})

        vim.keymap.set('n', '<leader>tvc', '<cmd>Telescope commands<CR>', {noremap=true, silent=true})
        vim.keymap.set('n', '<leader>tvm', '<cmd>Telescope marks<CR>', {noremap=true, silent=true})
        vim.keymap.set('n', '<leader>tvr', '<cmd>Telescope registers<CR>', {noremap=true, silent=true})
        vim.keymap.set('n', '<leader>tvh', '<cmd>Telescope help_tags<CR>', {noremap=true, silent=true})

        vim.keymap.set('n', '<leader>tgs', '<cmd>Telescope git_status<CR>', {noremap=true, silent=true})
        vim.keymap.set('n', '<leader>tgt', '<cmd>Telescope git_stash<CR>', {noremap=true, silent=true})
        vim.keymap.set('n', '<leader>tgb', '<cmd>Telescope git_branches<CR>', {noremap=true, silent=true})
        vim.keymap.set('n', '<leader>tgc', '<cmd>Telescope git_commits<CR>', {noremap=true, silent=true})
    end
}
