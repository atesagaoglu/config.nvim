return {
	"nvimdev/lspsaga.nvim",
	event = "LspAttach",
	config = function()
		require("lspsaga").setup({
			hover = {
				open_link = "x",
			},
			code_action = {
				show_server_name = true,
				extend_gitsigns = true,
			},
			ui = {
				code_action = "󰛨",
			},
		})

		vim.keymap.set("n", "<leader>sd", "<cmd>:Lspsaga hover_doc<CR>", { desc = "Lspsaga hover doc" })
		vim.keymap.set("n", "<leader>sa", "<cmd>:Lspsaga code_action<CR>", { desc = "Lspaga code action" })
		vim.keymap.set("n", "<leader>sr", "<cmd>:Lspsaga rename<CR>", { desc = "Lspsaga rename" })
	end,
}
