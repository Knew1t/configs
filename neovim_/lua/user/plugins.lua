local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	use({ "wbthomason/packer.nvim"}) -- Have packer manage itself
	use({ "nvim-lua/plenary.nvim"}) -- Useful lua functions used by lots of plugins
	use({ "windwp/nvim-autopairs"}) -- Autopairs, integrates with both cmp and treesitter
	use({ "numToStr/Comment.nvim"})
	use({ "JoosepAlviste/nvim-ts-context-commentstring"})
	use({ "kyazdani42/nvim-web-devicons"})
	use({ "kyazdani42/nvim-tree.lua"})
	--  use { "akinsho/bufferline.nvim", commit = "83bf4dc7bff642e145c8b4547aa596803a8b4dc4" }
	use({ "moll/vim-bbye"})
	use({ "nvim-lualine/lualine.nvim"})
	use({ "akinsho/toggleterm.nvim"})
	use({ "ahmedkhalf/project.nvim"})
	use({ "lewis6991/impatient.nvim"})
	use({ "lukas-reineke/indent-blankline.nvim", commit = "db7cbcb40cc00fc5d6074d7569fb37197705e7f6" })
	use({ "goolord/alpha-nvim", commit = "0bb6fc0646bcd1cdb4639737a1cee8d6e08bcc31" })
	use({ "folke/which-key.nvim" })

	-- Colorschemes
	use({ "lunarvim/darkplus.nvim", commit = "13ef9daad28d3cf6c5e793acfc16ddbf456e1c83" })
	use("morhetz/gruvbox")

	--tmux integration
	-- use({
	--     "aserowy/tmux.nvim",
	--     config = function() require("tmux").setup() end
	-- })
	use("christoomey/vim-tmux-navigator")
	-- Cmp
	use({ "hrsh7th/nvim-cmp"}) -- The completion plugin
	use({ "hrsh7th/cmp-buffer"}) -- buffer completions
	use({ "hrsh7th/cmp-path"}) -- path completions
	use({ "saadparwaiz1/cmp_luasnip"}) -- snippet completions
	use({ "hrsh7th/cmp-nvim-lsp"})
	use({ "hrsh7th/cmp-nvim-lua"})

	-- Snippets
	use({ "L3MON4D3/LuaSnip", commit = "8f8d493e7836f2697df878ef9c128337cbf2bb84" }) --snippet engine
	use({ "rafamadriz/friendly-snippets", commit = "2be79d8a9b03d4175ba6b3d14b082680de1b31b1" }) -- a bunch of snippets to use

	-- LSP
	use({ "neovim/nvim-lspconfig"}) -- enable LSP
	use({ "williamboman/mason.nvim"}) -- simple to use language server installer
	use({ "williamboman/mason-lspconfig.nvim"})
	use({ "jose-elias-alvarez/null-ls.nvim"}) -- for formatters and linters
	use({ "RRethy/vim-illuminate"})

	-- Telescope
	use({ "nvim-telescope/telescope.nvim"})
	-- MarkdownPreview
	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})
	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		commit = "8e763332b7bf7b3a426fd8707b7f5aa85823a5ac",
	})

	use({
		"nanotee/sqls.nvim",
		module = { "sqls" },
		cmd = {
			"SqlsExecuteQuery",
			"SqlsExecuteQueryVertical",
			"SqlsShowDatabases",
			"SqlsShowSchemas",
			"SqlsShowConnections",
			"SqlsSwitchDatabase",
			"SqlsSwitchConnection",
		},
	})
	--surround
	use({ "tpope/vim-surround" })
	--dadbod
	use({
		"tpope/vim-dadbod",
		opt = true,
		requires = {
			"kristijanhusak/vim-dadbod-ui",
			"kristijanhusak/vim-dadbod-completion",
		},
		config = function()
			require("user.dadbod").setup()
		end,
		cmd = { "DBUIToggle", "DBUI", "DBUIAddConnection", "DBUIFindBuffer", "DBUIRenameBuffer", "DBUILastQueryInfo" },
	})

	-- -- Git
	-- use { "lewis6991/gitsigns.nvim", commit = "2c6f96dda47e55fa07052ce2e2141e8367cbaaf2" }

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
