return {
	"kosayoda/nvim-lightbulb",
	enabled = false,
	config = function()
		require("nvim-lightbulb").setup({
			autocmd = { enabled = true },
			sign = {
				enabled = false,
			},
			virtual_text = {
				text = "󰛨",
				enabled = true,
			},
			number = {
				enabled = true,
			},
		})
	end,
}
