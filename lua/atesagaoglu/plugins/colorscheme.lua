return {
	{
		"sainnhe/sonokai",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.sonokai_style = "andromeda"
			-- vim.cmd([[colorscheme sonokai]])
		end,
	},
	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("onedark").setup({
				ending_tildes = true,
			})
			-- vim.cmd([[colorscheme onedark]])
		end,
	},
	{
		"rose-pine/neovim",
		as = "rose-pine",
		lazy = false,
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				variant = "main",
				styles = {
					italic = true,
				},
			})
			-- vim.cmd([[colorscheme rose-pine]])
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"ribru17/bamboo.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
	},
}
