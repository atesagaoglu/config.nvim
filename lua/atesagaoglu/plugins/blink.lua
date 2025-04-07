return {
	{
		"saghen/blink.compat",
		-- use the latest release, via version = '*', if you also use the latest release for blink.cmp
		version = "*",
		lazy = true,
		opts = {},
	},
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets", "L3MON4D3/LuaSnip" },
		version = "1.*",
		opts = {
			sources = {
				-- TODO: Add vlime or Conjure via blink.compat
				default = { "lsp", "path", "snippets", "buffer" },
				-- providers = {
				-- 	name = "vlime-cmp",
				-- 	module = "blink.compat.source",
				-- 	score_offset = -3,
				-- },
			},
			snippets = { preset = "luasnip" },
			keymap = {
				preset = "default",

				["<C-k>"] = { "select_prev", "fallback" },
				["<C-j>"] = { "select_next", "fallback" },
				["<C-l>"] = { "snippet_forward", "fallback" },
				["<C-h>"] = { "snippet_backward", "fallback" },
				["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
				-- ["<C-space>"] = {
				-- 	function(cmp)
				-- 		cmp.show({ providers = { "snippets" } })
				-- 	end,
				-- },
				["<CR>"] = { "accept", "fallback" },
			},
			signature = {
				enabled = true,
			},
			completion = {
				documentation = { auto_show = false },
				list = {
					selection = {
						preselect = false,
					},
				},
				menu = {
					draw = {
						columns = { { "kind_icon", gap = 2 }, { "label", "label_description", gap = 1 }, { "kind" } },
					},
				},
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
			appearance = {
				nerd_font_variant = "mono",
				use_nvim_cmp_as_default = false,
				highlight_ns = vim.api.nvim_create_namespace("blink_cmp"),
				kind_icons = {
					Text = "󰉿",
					Method = "󰊕",
					Function = "󰊕",
					Constructor = "󰒓",

					Field = "󰜢",
					Variable = "󰆦",
					Property = "󰖷",

					Class = "󱡠",
					Interface = "󱡠",
					Struct = "󱡠",
					Module = "󰅩",

					Unit = "󰪚",
					Value = "󰦨",
					Enum = "󰦨",
					EnumMember = "󰦨",

					Keyword = "󰻾",
					Constant = "󰏿",

					Snippet = "󱄽",
					Color = "󰏘",
					File = "󰈔",
					Reference = "󰬲",
					Folder = "󰉋",
					Event = "󱐋",
					Operator = "󰪚",
					TypeParameter = "󰬛",
				},
			},
		},
		opts_extend = { "sources.default" },
	},
}
