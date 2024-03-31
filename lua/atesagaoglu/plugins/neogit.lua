return{
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "sindrets/diffview.nvim",        -- optional - Diff integration
        "nvim-telescope/telescope.nvim", -- optional
    },
    config = function ()
        local neogit = require('neogit')
        neogit.setup()

        vim.keymap.set("n", "<leader>vv", function() neogit.open() end, {desc = "Open neogit"})
        vim.keymap.set("n", "<leader>vc", function() neogit.open({"commit"}) end, {desc = "Open neogit commit"})
    end
}
