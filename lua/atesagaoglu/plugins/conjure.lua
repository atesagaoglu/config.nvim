return {
	"Olical/conjure",
	ft = { "clojure", "fennel", "python" }, -- etc
	lazy = true,
	init = function()
		-- Set configuration options here
		-- Uncomment this to get verbose logging to help diagnose internal Conjure issues
		-- This is VERY helpful when reporting an issue with the project
		-- vim.g["conjure#debug"] = true
		vim.g["conjure#filetype#fennel"] = "conjure.client.fennel.stdio"
	end,

	-- Optional cmp-conjure integration
	dependencies = { "PaterJason/cmp-conjure" },
}
