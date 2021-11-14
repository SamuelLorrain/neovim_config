-- better white spaces
vim.api.nvim_set_keymap(
    'n',
    '<leader>fws', ':StripWhitespace<CR>',
    {noremap = true}
)

-- deactivate git blame by default
vim.g.gitblame_enabled = false

require'nvim-autopairs'.setup()
require'nvim-ts-autotag'.setup()

require('project_nvim').setup({
    manual_mode = false,
    detection_methods = {"lsp", "patterns"},
    patterns = {".git", "_darcs", ".hg", ".bzr", ".svin", "Makefile", "package.json"},
    show_hidden = true,
    silent_chdir = false,
    datapath = vim.fn.stdpath("data")
})

require('lualine').setup()
