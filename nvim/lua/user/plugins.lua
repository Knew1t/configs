return {
  {
    'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },
  -- { "theprimeagen/harpoon" },
  { "tpope/vim-surround" },
  { "tpope/vim-repeat" },
  { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },
  { 'nvim-tree/nvim-tree.lua' },

  -- snippets

  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*",     -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
  },
  { "rafamadriz/friendly-snippets" },
  -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
  { 'saadparwaiz1/cmp_luasnip' },
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    lazy = false,
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {}     -- this is equalent to setup({}) function
  },
  {
    "aserowy/tmux.nvim",
    config = function()
      return require("tmux").setup()
    end,
    lazy = false,
  },
  { "ray-x/web-tools.nvim" },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
}
