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
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
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
    opts = {} -- this is equalent to setup({}) function
  },
  {
    "aserowy/tmux.nvim",
    config = function()
      return require("tmux").setup(
        {
          copy_sync = {
            -- enables copy sync. by default, all registers are synchronized.
            -- to control which registers are synced, see the `sync_*` options.
            enable = false,

            -- ignore specific tmux buffers e.g. buffer0 = true to ignore the
            -- first buffer or named_buffer_name = true to ignore a named tmux
            -- buffer with name named_buffer_name :)
            ignore_buffers = { empty = false },

            -- TMUX >= 3.2: all yanks (and deletes) will get redirected to system
            -- clipboard by tmux
            redirect_to_clipboard = false,

            -- offset controls where register sync starts
            -- e.g. offset 2 lets registers 0 and 1 untouched
            register_offset = 0,

            -- overwrites vim.g.clipboard to redirect * and + to the system
            -- clipboard using tmux. If you sync your system clipboard without tmux,
            -- disable this option!
            sync_clipboard = true,

            -- synchronizes registers *, +, unnamed, and 0 till 9 with tmux buffers.
            sync_registers = true,

            -- syncs deletes with tmux clipboard as well, it is adviced to
            -- do so. Nvim does not allow syncing registers 0 and 1 without
            -- overwriting the unnamed register. Thus, ddp would not be possible.
            sync_deletes = true,

            -- syncs the unnamed register with the first buffer entry from tmux.
            sync_unnamed = true,
          },
        })
    end,
    lazy = false,
  },
  { "ray-x/web-tools.nvim" },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
}
