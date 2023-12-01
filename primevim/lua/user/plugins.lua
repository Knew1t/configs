return {
    {
        'ellisonleao/gruvbox.nvim',
        name = 'gruvbox',
        lazy = false,
        config = function()
            vim.cmd([[colorscheme gruvbox]])
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
    { 'nvim-tree/nvim-tree.lua' },


    -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
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
            return require("tmux").setup()
        end,
        lazy = false,
    },
}
