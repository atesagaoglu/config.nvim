return {
	cmd = { "fennel-language-server" },
	filetypes = { "fennel" },
	root_marks = function(fname)
		return vim.fs.dirname(vim.fs.find(".git", { path = fname, upward = true })[1])
	end,
}
