-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2', -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

-- Themes
  --  use { "catppuccin/nvim", as = "catppuccin" }

    use({ 
	  'Mofiqul/vscode.nvim',
	  as = 'vscode',
	  config = function()
		  vim.cmd('colorscheme vscode')
	  end
  })

  use({
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
          vim.cmd('colorscheme rose-pine')
      end
  })

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = function()
		  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		  ts_update()
	  end,
  }


  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('tmsvg/pear-tree')
  use('voldikss/vim-floaterm')
--  use("mattn/vim-goimports")
--  use {'neoclide/coc.nvim', branch = 'release'}

    use {
      'nvimdev/dashboard-nvim',
      event = 'VimEnter',
      config = function()
        require('dashboard').setup {
          -- config
        }
      end,
      requires = {'nvim-tree/nvim-web-devicons'}
    }


  -- Plugins for Web Development
  use ('norcalli/nvim-colorizer.lua') -- Enables Color previews
  use ('mattn/emmet-vim') -- Enables creating tag trees through abbreviations

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		{'neovim/nvim-lspconfig'},             -- Required
	    { 'williamboman/mason.nvim' },
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  }
}

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

use({
    "aserowy/tmux.nvim",
    config = function() return require("tmux").setup() end
})
use 'SirVer/ultisnips'
-- Vimtex
use 'lervag/vimtex'

end)
