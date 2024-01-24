return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup({
            renderer = {
                group_empty = true,
                full_name = true
            },
            view = {
                side = "right"
            }
        })

        vim.api.nvim_set_keymap(
        'n',
        '|',
        ':NvimTreeToggle<CR>',
        { noremap = true }
        );
    end
}
