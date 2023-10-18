return {
	{
		'rose-pine/neovim',
		name = 'rose-pine',
		lazy = false,
		config = function()
			vim.cmd([[colorscheme rose-pine]])
		end,
	},

	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.4',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' },
	},

	{ "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },
	{ "theprimeagen/harpoon" },
	{ "tpope/vim-surround" },
	{ 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
	{ 'williamboman/mason.nvim' },
	{ 'williamboman/mason-lspconfig.nvim' },
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'L3MON4D3/LuaSnip' },
}
