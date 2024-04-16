return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = "all",
            auto_install = false,
            highlight = {
                enable = true
            },
            indent = {
                enable = true
            }
        })
        vim.opt.foldmethod="expr"
        vim.opt.foldexpr="nvim_treesitter#foldexpr()"
        vim.o.foldlevel=99
    end,
    build = ':TSUpdateSync'
}
