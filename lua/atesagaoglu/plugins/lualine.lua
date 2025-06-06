return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			-- options = {
			--     -- theme = 'rose-pine',
			-- },
			options = {
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
			},
			-- tabline = {
			-- 	lualine_a = { "filetype", "filename" },
			-- },
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "filetype", "filename" },
				lualine_c = {},
				lualine_x = { "diagnostics" },
				lualine_y = { "diff" },
				lualine_z = { "branch" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
