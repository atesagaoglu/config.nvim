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

autocmd({ "UIEnter", "ColorScheme" }, {
	callback = function()
		local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
		if not normal.bg then
			return
		end
		io.write(string.format("\027]11;#%06x\027\\", normal.bg))
	end,
})

autocmd("UILeave", {
	callback = function()
		io.write("\027]111\027\\")
	end,
})

-- autocmd("InsertEnter", {
-- 	callback = function()
-- 		local cmd = "setxkbmap -layout 'us' -variant 'engrammer' -option caps:swapescape && polybar-msg hook keyboard 1"
-- 		local job = vim.fn.jobstart(cmd, {
-- 			cwd = os.getenv("HOME"),
-- 			on_exit = nil,
-- 			on_stdout = nil,
-- 			on_stderr = nil,
-- 		})
-- 	end,
-- })
--
-- autocmd({ "VimEnter", "InsertLeave" }, {
-- 	callback = function()
-- 		local cmd = "setxkbmap -layout 'us' -option caps:swapescape && polybar-msg hook keyboard 1"
-- 		local job = vim.fn.jobstart(cmd, {
-- 			cwd = os.getenv("HOME"),
-- 			on_exit = nil,
-- 			on_stdout = nil,
-- 			on_stderr = nil,
-- 		})
-- 	end,
-- })
