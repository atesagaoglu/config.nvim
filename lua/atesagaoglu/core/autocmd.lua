vim.api.nvim_create_autocmd("FileType", {
	pattern = "neo-tree",
	callback = function()
		vim.opt_local.number = true
		vim.opt_local.relativenumber = true
	end,
})
