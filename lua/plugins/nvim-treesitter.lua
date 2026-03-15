return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = "all",
            ignore_install = { 'org' },
            auto_install = false,
            highlight = {
                enable = true
            },
            indent = {
                enable = true
            }
        })
    end,
    build = ':TSUpdateSync'
}
