return {
	"nvimdev/lspsaga.nvim",
	event = "LspAttach",
	-- enabled = false,
	config = function()
		require("lspsaga").setup({
			hover = {
				open_link = "x",
			},
			code_action = {
				show_server_name = false,
				extend_gitsigns = false,
			},
			ui = {
				code_action = "󰛨",
			},
			lightbulb = {
				sign = false
			},
			outline = {
				win_position = "left",
				width = 40,
				keys = {
					toggle_or_jump = 'x',
				}
			}
		})

		vim.keymap.set("n", "<leader>sa", "<cmd>:Lspsaga code_action<CR>", { desc = "Lspaga code action" })
		vim.keymap.set("n", "<leader>sr", "<cmd>:Lspsaga rename<CR>", { desc = "Lspsaga rename" })
		vim.keymap.set("n", "<leader>so", "<cmd>:Lspsaga outline<CR>", { desc = "Lspsaga outline" })
	end,
}
