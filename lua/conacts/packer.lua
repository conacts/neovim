-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'  -- package manager

    use 'williamboman/mason.nvim'
	use 'github/copilot.vim'      -- ai -- NOTE: look into a copilot w/ diff
	use 'preservim/nerdtree'
    use 'airblade/vim-gitgutter' -- vim overlays

    -- for image previews, install chafa (imgs), imagemagick (svg) and poppler (pdf)
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.3', 
        requires = {
            'nvim-lua/popup.nvim',
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-media-files.nvim'
        } 
    }
	use { 'ThePrimeagen/harpoon', requires = { 'nvim-lua/plenary.nvim'} } -- primetime
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- nvim treesitter
	use 'neovim/nvim-lspconfig' -- collection of configurations for built-in LSP client

    -- for image rendering in telescope search
    use { 'nvim-lua/popup.nvim' }
    use { 'nvim-telescope/telescope-media-files.nvim' }
end)
