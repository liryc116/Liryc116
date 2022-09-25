-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Tokyo theme
  use 'folke/tokyonight.nvim'

  -- Vim-airline / mode indicator
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

    -- cmp plugins / completion
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "hrsh7th/cmp-nvim-lua" -- lua support
  use "saadparwaiz1/cmp_luasnip" -- snippet completions

  -- LSP
  --use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  --use "williamboman/nvim-lsp-installer" -- Easy Config
end)
