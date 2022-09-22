return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use { "akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
		require("toggleterm").setup()
	end }
	use 'famiu/nvim-reload'
	use 'mfussenegger/nvim-dap'
	use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	-- Lua lsp server
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
	-- BufferLine
	use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
	-- Flutter nvim
	-- use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim', config = require("flutter-tools").setup {} }
	use { 'glepnir/lspsaga.nvim' }
	-- CMP
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	-- VSNIP
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	use 'folke/tokyonight.nvim'
end)
