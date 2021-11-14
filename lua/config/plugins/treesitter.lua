require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true
    },
    indent = {
        enable = false
    },
    context_commentstring = { -- nvim-ts-context-commentstring
        enable = true
    },
    autotag = { -- nvim-ts-autotag
        enable = true
    }
}


vim.o.foldmethod="expr"
vim.cmd([[
set foldexpr=nvim_treesitter#foldexpr()
]])

