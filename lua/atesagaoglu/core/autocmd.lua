local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

augroup("AtStart", { clear = true })

autocmd("VimEnter", {
	group = "AtStart",
	callback = function()
		local dir = vim.fn.expand("%:p:h")
		local prefix = "oil://"

		if string.sub(dir, 1, #prefix) == prefix then
			dir = string.sub(dir, #prefix + 1)
		end

		if vim.loop.fs_stat(dir) then
			vim.fn.chdir(dir)
		end
	end,
})
