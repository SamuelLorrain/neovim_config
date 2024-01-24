return {
    "ntpeters/vim-better-whitespace",
    config = function()
        vim.g.better_whitespace_enabled = 1
        vim.keymap.set(
            'n',
            '<leader>tws',
            ':ToggleWhitespace<CR>'
        )
        vim.keymap.set(
            'n',
            '<leader>fws',
            ':StripWhitespace<CR>'
        )
    end,
};
