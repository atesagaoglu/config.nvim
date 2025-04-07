local lsps = {
	"luals",
	"clangd",
	"fennel-language-server",
}

vim.lsp.enable(lsps)

local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)
		keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
		keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
		keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)
		keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
		keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)
		keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
		keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
		keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
		keymap.set("n", "K", vim.lsp.buf.hover, opts)
		keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
		keymap.set("n", "<leader>lf", vim.lsp.buf.format, opts)
	end,
})
