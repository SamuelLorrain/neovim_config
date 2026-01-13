-- vim.opt.foldmethod="expr"
-- vim.opt.foldexpr="nvim_treesitter#foldexpr()"

vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.wo[0][0].foldmethod = 'expr'
vim.o.foldlevel=99
