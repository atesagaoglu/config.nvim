return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				{
					name = "One Dark",
					colorscheme = "onedark",
					before = [[
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Sonokai",
					colorscheme = "sonokai",
					before = [[
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Rose Pine",
					colorscheme = "rose-pine",
					before = [[
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Tokyo Night",
					colorscheme = "tokyonight",
					before = [[
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Tokyo Night Night",
					colorscheme = "tokyonight-night",
					before = [[
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Oxocarbon",
					colorscheme = "oxocarbon",
					before = [[
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Oxocarbon Light",
					colorscheme = "oxocarbon",
					before = [[
						vim.opt.background = "light"
					]],
				},
				{
					name = "Bamboo Vulgaris",
					colorscheme = "bamboo",
					before = [[
						vim.opt.background = "dark"

						require("bamboo").setup {
						style = 'vulgaris'
						}

						require("bamboo").load()
					]],
				},
				{
					name = "Bamboo Multiplex",
					colorscheme = "bamboo",
					before = [[
						vim.opt.background = "dark"

						require("bamboo").setup {
						style = 'multiplex'
						}

						require("bamboo").load()
					]],
				},
				{
					name = "Bamboo Light",
					colorscheme = "bamboo",
					before = [[
						vim.opt.background = "light"

						require("bamboo").setup {
						style = 'light'
						}

						require("bamboo").load()
					]],
				},
				{
					name = "Gruvbox Light",
					colorscheme = "gruvbox",
					before = [[
						vim.opt.background = "light"
					]],
				},
				{
					name = "Gruvbox Dark",
					colorscheme = "gruvbox",
					before = [[
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Solarized Dark",
					colorscheme = "solarized",
					before = [[
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Solarized Light",
					colorscheme = "solarized",
					before = [[
						vim.opt.background = "light"
					]],
				},
				{
					name = "Zenburn",
					colorscheme = "zenburn",
					before = [[
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Kanagawa",
					colorscheme = "kanagawa",
					before = [[
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Gruber Darker",
					colorscheme = "gruber-darker",
					before = [[
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Borland",
					colorscheme = "borland",
					before = [[
						vim.g.BorlandStyle = "classic"
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Zenbones",
					colorscheme = "zenbones",
					before = [[
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Zenbones White",
					colorscheme = "zenbones",
					before = [[
						vim.opt.background = "light"
					]],
				},
				{
					name = "Deepwhite",
					colorscheme = "deepwhite",
					before = [[
						vim.opt.background = "light"
					]],
				},
				{
					name = "Deepwhite Low Blue",
					colorscheme = "deepwhite",
					before = [[
						vim.opt.background = "light"

						require("deepwhite").setup({
							low_blue_light = true
						})
					]],
				},
				{
					name = "Everforest",
					colorscheme = "everforest",
					before = [[
						vim.opt.background = "dark"

						require("everforest").setup({
							background = "medium"
						})
					]],
				},
				{
					name = "Everforest Soft",
					colorscheme = "everforest",
					before = [[
						vim.opt.background = "dark"

						require("everforest").setup({
							background = "medium"
						})
					]],
				},
				{
					name = "Everforest Light",
					colorscheme = "everforest",
					before = [[
						vim.opt.background = "light"

						require("everforest").setup({
							background = "medium"
						})
					]],
				},
				{
					name = "Everforest Soft Light",
					colorscheme = "everforest",
					before = [[
						vim.opt.background = "light"

						require("everforest").setup({
							background = "medium"
						})
					]],
				},
			},
			livePreview = true,
		})
	end,
}
