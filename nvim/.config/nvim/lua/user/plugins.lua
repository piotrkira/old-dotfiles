return require('packer').startup(function()
	use { 'wbthomason/packer.nvim' }
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = [[require('user.config.nvim-treesitter')]] }
	use { 'p00f/nvim-ts-rainbow' }
	use { 'romgrk/nvim-treesitter-context' }
	--  use { 'ruanyl/vim-gh-line' }
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

	-- TODO: learn more about this plugin
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

	use { 'romainl/vim-cool' }
	use { 'lewis6991/gitsigns.nvim', config = [[require('user.config.gitsigns')]] }
	use { 'ntpeters/vim-better-whitespace' }
	use { 'L3MON4D3/LuaSnip' }

	--	colorschemes --
	use 'sainnhe/everforest'
	--[[ use { 'navarasu/onedark.nvim'
	use 'sainnhe/gruvbox-material'
	use 'sainnhe/edge'
	use 'rrethy/nvim-base16 ]]
	-- use 'sainnhe/sonokai'
end)
