-- https://github.com/tpope/vim-fugitive
return {
    "tpope/vim-fugitive",
    config = function()

        -- has a state to disable it...
        vim.keymap.set(
            'n',
            'blm',
            "<cmd>G blame<CR>",
            { noremap = true, silent = false })
    end
}
