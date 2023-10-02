---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<Esc>"] = "",
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
    ["<A-j>"] = "",
    ["<A-k>"] = "",
    ["<A-l>"] = "",
    -- disable terminal
    ["<A-i>"] = "",
    ["<A-h>"] = "",
    ["<A-v>"] = "",
    ["<M-i>"] = "",
    -- disable themes
    ["<leader>t"] = "",
    -- disable
    ["<leader>ff"] = "",
  },
  i = {
    ["<C-b>"] = "",
    ["<C-e>"] = "",
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
    -- disable terminal
    ["<A-i"] = "",
    ["<A-h"] = "",
    ["<A-v"] = "",
    ["<A-j>"] = "",
    ["<A-k>"] = "",
    ["<A-l>"] = "",
    ["<leader>n"] = "",
    ["<leader>rn"] = "",
  },
  v = {
    -- disable terminal
    ["<Esc>"] = "",
    ["<A-i"] = "",
    ["<A-h"] = "",
    ["<A-v"] = "",
    ["<A-j>"] = "",
    ["<A-k>"] = "",
    ["<A-l>"] = "",
  },
  t = {
    -- disable terminal toggling
    ["<A-i"] = "",
    ["<A-h"] = "",
    ["<A-v"] = "",
  },
}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader><CR>"] = { ":noh <CR>", "Clear highlights" },
    ["<C-f>"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["J"] = { "mzJ`z" }, -- when J, cursor stays in position
    ["n"] = { "nzzzv"},
    ["N"] = { "Nzzzv"},

  },
  i = {},
  v = {
    ["<leader>ra"] = { '"hy:%s/<C-r>h//g<left><left>' },
    ["<leader><CR>"] = { ":noh <CR>", "Clear highlights" },
  },
}

-- more keybinds!
return M
