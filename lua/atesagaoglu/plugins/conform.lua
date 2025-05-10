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
			-- c = { "my_clang_format" },
			-- cpp = { "my_clang_format" },
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
			log_level = vim.log.levels.DEBUG,
			formatters = {
				my_clang_format = {
					command = "/usr/bin/clang-format",
					args = { "--style=file", "--fallback-style=none", "--assume-filename", "$FILENAME" }, -- prepend as needed
					stdin = true,
					cwd = function()
						return "/home/eds"
					end,
				},
			},
		})
	end,
}
