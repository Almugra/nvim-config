vim.cmd [[packadd packer.nvim]]

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'
  --use 'folke/tokyonight.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'nvim-treesitter/nvim-treesitter'
  use {'ThePrimeagen/harpoon', required = {'nvim-lua/plenary.nvim'}}
  ----
   use {
    'phaazon/hop.nvim',
    branch = 'v2',
    config = function()
      require'hop'.setup {keys = 'etovxqpdygfblzhckisuran'}
    end
  }  
  use {'folke/which-key.nvim', event = "BufWinEnter", config = "require('config.whichkey')" }
  use {"windwp/nvim-autopairs", config = "require('config.autopairs')"}

  ---- telescope 
  use {'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = {'nvim-lua/plenary.nvim'}, config = "require('config.telescope')" }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

  ------ LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use {'neovim/nvim-lspconfig', config = "require('config.lsp.language-servers')"}
  use {'simrat39/rust-tools.nvim', config="require('config.lsp.rust-tools')" }
  use 'mfussenegger/nvim-jdtls'

  ------ Rust 

  -------- cmp
  use {'hrsh7th/nvim-cmp', config="require('config.cmp')" }
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/vim-vsnip'
  use 'L3MON4D3/LuaSnip'
  use "hrsh7th/cmp-nvim-lua"
  use  'saadparwaiz1/cmp_luasnip'
  use  "rafamadriz/friendly-snippets"

end)

