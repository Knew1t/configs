vim.g.mapleader = ","

vim.keymap.set("n", "<C-n>", vim.cmd.Ex)

vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end)
