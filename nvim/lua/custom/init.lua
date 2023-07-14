-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
local opt = vim.opt
opt.relativenumber = true
opt.swapfile = false
opt.foldmethod = "syntax"
-- opt.foldexpr = "nvim_treesitter#foldexpr()"
