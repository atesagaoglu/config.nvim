local function switch_source_header(bufnr)
	local params = vim.lsp.util.make_text_document_params(bufnr)
	local clients = vim.lsp.get_clients({ name = "clangd", bufnr = bufnr })
	for _, client in ipairs(clients) do
		client:request("textDocument/switchSourceHeader", params, function(err, result)
			if err then
				vim.notify("Error switching source/header: " .. err.message, vim.log.levels.ERROR)
				return
			end
			if not result then
				vim.notify("No corresponding file found", vim.log.levels.WARN)
				return
			end
			vim.api.nvim_command("edit " .. vim.uri_to_fname(result))
		end, bufnr)
	end
end

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c", "cpp", "objc", "objcpp" },
	callback = function()
		if vim.fn.exists(":SwitchSourceHeader") == 0 then
			vim.api.nvim_create_user_command("SwitchSourceHeader", function()
				switch_source_header(0)
			end, { desc = "Switch between source and header file using clangd" })
		end
		vim.api.nvim_set_keymap("n", "<Leader>sh", ":SwitchSourceHeader<CR>", { noremap = true, silent = true })
	end,
})
