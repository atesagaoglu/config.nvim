return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		local prettierd_fmts = { "javascript", "javascriptreact", "typescriptreact", "vue" }
		local formatters = {
			lua = { "stylua" },
			python = { "black" },
			php = { "easy-coding-standard" },
			go = { "goimports" },
		}

		for _, ft in ipairs(prettierd_fmts) do
			formatters[ft] = { "prettierd", stop_after_first = true }
		end

		conform.setup({
			formatters_by_ft = formatters,
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})
	end,
}
