return require('packer').startup(function()
  use { 'wbthomason/packer.nvim' }

  -- treesitter --
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = [[require('user.config.nvim-treesitter')]] }
  use { 'nvim-treesitter/nvim-treesitter-textobjects' }
  use { 'p00f/nvim-ts-rainbow' }
  use { 'romgrk/nvim-treesitter-context' }

  -- use { 'nvim-tree/nvim-tree.lua' , config = [[require('user.config.nvim-tree')]]}

  use { 'kyazdani42/nvim-web-devicons', config = [[require('user.config.nvim-web-devicons')]] }
  --  use { 'kyazdani42/nvim-tree.lua' }
  use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } },
    config = [[require('user.config.telescope')]] }
  use { 'nvim-telescope/telescope-ui-select.nvim' }

  use { 'windwp/nvim-autopairs', config = [[require('user.config.nvim-autopairs')]] }

  -- navigation --
  use { 'ThePrimeagen/harpoon' }
  use { 'ggandor/leap.nvim', config = [[require('user.config.leap')]] }

  -- look --
  use { 'ntpeters/vim-better-whitespace' }
  use { 'norcalli/nvim-colorizer.lua', config = [[require('user.config.colorizer')]] }

  use { 'hoob3rt/lualine.nvim', config = [[require('user.config.lualine')]] }

  use { 'simrat39/symbols-outline.nvim', config = [[require('user.config.symbols-outline')]] }

  use { 'b3nj5m1n/kommentary' }

  -- utils --
  -- use { 'ggandor/lightspeed.nvim' }
  use { 'kylechui/nvim-surround', config = [[require('user.config.nvim-surround')]] }

  use { 'nvim-neotest/neotest', config = [[require('user.config.neotest')]] }
  use { 'nvim-neotest/neotest-python' }

  use { 'williamboman/mason.nvim', config = [[require('user.config.mason')]] }

  -- debuging --
  use { 'mfussenegger/nvim-dap' }
  use { 'rcarriga/nvim-dap-ui', config = [[require('user.config.nvim-dap-ui')]] }
  use { 'mfussenegger/nvim-dap-python', config = [[require('user.config.nvim-dap')]] }
  use { 'theHamsta/nvim-dap-virtual-text', config = [[require('user.config.nvim-dap-virtual-text')]] }
  use { 'leoluz/nvim-dap-go', config = [[require('user.config.nvim-dap')]] }
  use { 'hkupty/iron.nvim' }

  -- lsp --
  use { 'neovim/nvim-lspconfig' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-nvim-lua' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'onsails/lspkind-nvim' }
  use { 'hrsh7th/cmp-vsnip' }
  use { 'L3MON4D3/LuaSnip' }
  use { 'ray-x/lsp_signature.nvim', config = [[require('user.config.lsp_signature')]] }

  use { 'jose-elias-alvarez/null-ls.nvim', config = [[require('user.config.null-ls')]] }

  use { 'ThePrimeagen/refactoring.nvim', config = [[require('user.config.refactoring')]] }

  -- git --
  use { 'lewis6991/gitsigns.nvim', config = [[require('user.config.gitsigns')]] }
  use { 'f-person/git-blame.nvim', config = [[require('user.config.git-blame')]] }
  use { 'ruifm/gitlinker.nvim' }
  use { 'sindrets/diffview.nvim' }

  --	colorschemes --
  use 'sainnhe/everforest'
  use 'catppuccin/nvim'
  use 'folke/tokyonight.nvim'
  use 'rebelot/kanagawa.nvim'
  use 'EdenEast/nightfox.nvim'
end)
