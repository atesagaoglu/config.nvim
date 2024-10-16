return {
	"zaldih/themery.nvim",
	config = function()
		require("themery").setup({
			themeConfigFile = "~/.config/nvim/lua/atesagaoglu/core/theme.lua",
			themes = { "onedark", "sonokai", "rose-pine", "tokyonight", "tokyonight-night" },
			livePreview = true,
		})

		require("atesagaoglu.core.theme")
	end,
}
