vim.api.nvim_create_autocmd("FileType", {
	pattern = { "javascript", "typescript", "typescriptreact", "javascriptreact", "vue" },
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 0
		vim.bo.expandtab = true
	end,
})
