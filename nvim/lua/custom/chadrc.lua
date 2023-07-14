---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "gruvbox",
  theme_toggle = { "gruvbox", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  nvdash = {
    load_on_startup = false,
  },
  lsp = {},
  --  cmp = {
  --    mapping = {
  --      ["<C-n"] = mapping.select_next_item(),
  --    },
  --  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

-- M.cmp = function()
--   local cmp = require "cmp"
--   return {
--     mapping = {
--       ["<C-j>"] = cmp.mapping.select_next_item(),
--     },
--   }
-- end

return M
