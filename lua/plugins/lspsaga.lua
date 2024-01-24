-- https://nvimdev.github.io/lspsaga/
return {
    'nvimdev/lspsaga.nvim',
    event = 'LspAttach',
    config = function()
        require('lspsaga').setup({
            symbol_in_winbar = {
                enable = false
            },
            beacon = {
                enable = false
            },
            lightbulb = {
                sign = false,
                enable_in_insert = false
            },
            code_action = {
                only_in_cursor = false,
                extend_gitsigns = true
            }
        })
    end,
}
