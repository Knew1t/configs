require("user")

vim.cmd [[
 au BufRead,BufNewFile *.hbs set filetype=html
]]

vim.api.nvim_exec([[autocmd BufWritePre *.ts, *.tsx Prettier]], false)
