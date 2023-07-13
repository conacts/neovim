-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'  -- Package manager
  use 'github/copilot.vim'      -- Copilot
  -- use 'neovim/nvim-lspconfig'   -- Collection of configurations for built-in LSP client
  -- use 'tree-sitter/tree-sitter' -- Tree sitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- nvim treesitter

end)
