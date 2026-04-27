return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "python", "javascript", "typescript", "c", "haskell"},
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
