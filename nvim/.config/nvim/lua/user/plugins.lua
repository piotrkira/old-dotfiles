return require('packer').startup(function()
	use { 'wbthomason/packer.nvim' }

  -- treesitter --
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = [[require('user.config.nvim-treesitter')]] }
	use { 'p00f/nvim-ts-rainbow' }
	use { 'romgrk/nvim-treesitter-context' }

	use { 'kyazdani42/nvim-web-devicons', config = [[require('user.config.nvim-web-devicons')]] }
	--  use { 'kyazdani42/nvim-tree.lua' }
	use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } },
		config = [[require('user.config.telescope')]] }
	use { 'nvim-telescope/telescope-ui-select.nvim' }
	use { 'windwp/nvim-autopairs', config = [[require('user.config.nvim-autopairs')]] }
	use { 'norcalli/nvim-colorizer.lua', config = [[require('user.config.colorizer')]] }
	use { 'hoob3rt/lualine.nvim', config = [[require('user.config.lualine')]] }

	use { 'simrat39/symbols-outline.nvim', config = [[require('user.config.symbols-outline')]] }

	use { 'b3nj5m1n/kommentary' }
	use { 'f-person/git-blame.nvim', config = [[require('user.config.git-blame')]] }

	-- utils --
	use { 'ggandor/lightspeed.nvim' }

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

  -- git --
	use { 'lewis6991/gitsigns.nvim', config = [[require('user.config.gitsigns')]] }
	use { 'ruifm/gitlinker.nvim' }
  use { 'sindrets/diffview.nvim' }

	use { 'ntpeters/vim-better-whitespace' }

	--	colorschemes --
	use 'sainnhe/everforest'
end)
