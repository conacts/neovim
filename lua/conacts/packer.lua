-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'  -- package manager
	use 'github/copilot.vim'      -- ai guy
	use 'preservim/nerdtree'      -- nerding out
	use { 'nvim-lua/plenary.nvim' } -- async stuff (dependency)
	use { 'ThePrimeagen/harpoon' } -- primetime
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- nvim treesitter
	use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' } -- find what u need
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})

	-- use 'neovim/nvim-lspconfig'   -- collection of configurations for built-in LSP client
	-- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
end)
