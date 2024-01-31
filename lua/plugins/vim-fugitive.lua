-- https://github.com/tpope/vim-fugitive
return {
    "tpope/vim-fugitive",
    config = function()
        -- TODO has a state to disable it...
        vim.keymap.set(
            'n',
            'blm',
            "<cmd>G blame<CR>",
            { noremap = true, silent = false })

        -- create some custom commands
        vim.api.nvim_create_user_command('Gpf', 'Git push --force', {})
        vim.api.nvim_create_user_command('Gp', 'Git push', {})
        vim.api.nvim_create_user_command('Gcan', 'Git commit --amend --no-edit', {})

    end
}
