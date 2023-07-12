---@type MappingsTable
local M = {}

M.disabled = {
  n = {
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
  },
  v = {
  ["<leader>ra"] = {"\"hy:%s/<C-r>h//gc<left><left><left>"},
  },
}

-- more keybinds!
return M
