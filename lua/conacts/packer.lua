-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'  -- package manager

    use 'williamboman/mason.nvim'
	use 'github/copilot.vim'      -- ai guy
	use 'preservim/nerdtree'      -- nerding out
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.3',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

	use { 'ThePrimeagen/harpoon' } -- primetime
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- nvim treesitter


	use 'neovim/nvim-lspconfig'   -- collection of configurations for built-in LSP client
	-- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
end)
