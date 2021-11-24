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

-- neoformat
vim.api.nvim_exec([[
let g:neoformat_phpcbf = {
    \ 'exe': 'phpcbf',
    \ 'args': ['--standard=PSR12', '-'],
    \ 'stdin': 1,
    \ 'valid_exit_codes': [0,1]
    \ }

let g:neoformat_enabled_php = ['phpcbf']

augroup neofmt
    autocmd!
    autocmd BufWritePre *.php Neoformat
augroup END
]], false)


-- formatter.nvim seem to not works properly
require'formatter'.setup {
    filetype = {
        php = {
            function()
                return {
                    exe = "phpcbf",
                    args = {"--standard=PSR12", "-"},
                    stdin = false
                }
            end
        }
    },
    logging = true
}

