vim.g.maplocalleader = ';'
vim.g.mapleader = ','

local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.splitbelow = true
opt.splitright = true

opt.wrap = false

opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4

opt.virtualedit = "block"

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true

opt.winblend = 0
opt.signcolumn = "yes"

opt.foldmethod = 'expr'
opt.foldexpr = 'vim.treesitter#foldexpr()'
opt.foldlevel = 99
