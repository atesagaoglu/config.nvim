return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = {
					"prettierd",
					stop_after_first = true,
				},
				javascriptreact = {
					"prettierd",
					stop_after_first = true,
				},
				typescriptreact = {
					"prettierd",
					stop_after_first = true,
				},
				vue = {
					"prettierd",
					stop_after_first = true,
				},
				python = { "black" },
				php = { "easy-coding-standard" },
				go = { "goimports" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})
	end,
}
