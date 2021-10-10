return require('packer').startup(function()
  use { 'wbthomason/packer.nvim' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } use { 'p00f/nvim-ts-rainbow' }
  use { 'romgrk/nvim-treesitter-context' }
  use { 'ruanyl/vim-gh-line' }
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'kyazdani42/nvim-tree.lua' }
  use { 'nvim-telescope/telescope.nvim', requires = {{ 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' }}}
	use 'unblevable/quick-scope'
  use { 'windwp/nvim-autopairs' }
  use { 'npxbr/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}}
  use { 'norcalli/nvim-colorizer.lua' }
  use 'hoob3rt/lualine.nvim'
  use { 'neovim/nvim-lspconfig' }
  use { 'hrsh7th/nvim-compe' }
  use { 'hrsh7th/vim-vsnip' }
  use { 'rafamadriz/friendly-snippets' }
	use { 'romainl/vim-cool' }
  use { 'lewis6991/gitsigns.nvim' }
	use { 'ntpeters/vim-better-whitespace' }
	use { 'justinmk/vim-sneak' }
end)

