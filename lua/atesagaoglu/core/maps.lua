vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>cc", ":! ")
vim.keymap.set("n", "<leader>C", ":!<C-p>")

vim.keymap.set("i", "<C-CR>", function()
	return "\\n"
end, { expr = true })

vim.keymap.set("n", "<leader>yy", function()
	local current_pos = vim.fn.getpos(".")
	local current_view = vim.fn.winsaveview()
	vim.cmd("normal! ggVGy")
	vim.fn.setpos(".", current_pos)
	vim.fn.winrestview(current_view)
end, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>el", function()
	local current = vim.diagnostic.config().virtual_text
	local new_state = not current
	vim.diagnostic.config({
		virtual_text = new_state,
		underline = new_state,
	})
	vim.notify("Error Lens: " .. (new_state and "Enabled" or "Disabled"), vim.log.levels.INFO)
end, { desc = "Toggle Error Lens" })
