return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			-- themes = { "onedark", "sonokai", "rose-pine", "tokyonight", "tokyonight-night", "oxocarbon" },
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
			},
			livePreview = true,
		})
	end,
}
