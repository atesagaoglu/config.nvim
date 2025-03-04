return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		require("telescope").setup({
			defaults = {
				-- Default theme to ivy
				sorting_strategy = "ascending",

				layout_strategy = "bottom_pane",
				layout_config = {
					height = 25,
				},

				border = true,
				borderchars = {
					prompt = { "─", " ", " ", " ", "─", "─", " ", " " },
					results = { " " },
					preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
				},
			},
			pickers = {
				buffers = {
					initial_mode = "normal",
					mappings = {
						n = {
							["dd"] = require("telescope.actions").delete_buffer,
						},
					},
				},
				registers = {
					initial_mode = "normal",
				},
				marks = {
					initial_mode = "normal",
				},
				diagnostics = {
					initial_mode = "normal",
					wrap_results = true,
				},
			},
		})

		vim.keymap.set("n", "<leader>ff", builtin.find_files)
		vim.keymap.set("n", "<leader>fv", builtin.git_files)
		vim.keymap.set("n", "<leader>fg", builtin.live_grep)
		vim.keymap.set("n", "<leader>bb", builtin.buffers)
		vim.keymap.set("n", "<leader>rr", builtin.registers)
		vim.keymap.set("n", "<leader>fm", builtin.marks)
		vim.keymap.set("n", "<leader>fa", builtin.builtin)
		vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics bufnr=0<CR>")
	end,
}
