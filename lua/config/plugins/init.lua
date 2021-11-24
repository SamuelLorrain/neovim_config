-- Install packer
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd([[
    augroup Packer
        autocmd!
	autocmd BufWritePost init.lua PackerCompile
    augroup end
]])

-- install others plugins
require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- lsp
    use { 'neovim/nvim-lspconfig' }
    use { 'williamboman/nvim-lsp-installer' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'saadparwaiz1/cmp_luasnip', requires={{ 'L3MON4D3/LuaSnip' }} }
    -- use { 'RishabhRD/nvim-lsputils', requires = {{'RishabhRD/popfix'}} }

    -- add-ons
    use { 'vimwiki/vimwiki', branch = 'dev'} -- ,ww
    use { 'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/popup.nvim' },
            { 'nvim-lua/plenary.nvim' },
        }
    }

    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }

    -- Theming/Colors
    use 'sainnhe/sonokai'
    use 'norcalli/nvim-colorizer.lua'
    -- Git handling
    use 'f-person/git-blame.nvim'
    use 'tpope/vim-fugitive'

    -- text editor
    use 'tpope/vim-commentary'
    use {
        'nvim-treesitter/nvim-treesitter',
        branch='0.5-compat',
        run=':TSUpdate'
    } -- to change when nvim 0.6
    use 'JoosepAlviste/nvim-ts-context-commentstring'

    use 'tpope/vim-abolish' -- :Subvert

    -- miscellanous behaviors
    use 'ahmedkhalf/project.nvim'
    use 'windwp/nvim-autopairs'
    use 'ntpeters/vim-better-whitespace'
    use 'camspiers/lens.vim'

    -- languages
    use 'editorconfig/editorconfig-vim'
    use 'windwp/nvim-ts-autotag' -- html auto close tags
    use 'mhartington/formatter.nvim'
    use 'sbdchd/neoformat'
    -- use 'tools-life/taskwiki'
end)

