return{
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    -- tag = "*",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("neorg").setup {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.concealer"] = {
                    config = {
                        icon_preset = "basic",
                    }
                }, -- Adds pretty icons to your documents
                ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            main = '~/notes',
                        },
                        default_workspace = 'main'
                    }
                },
                ["core.export"] = {},
                ["core.export.markdown"] = {
                    config = {
                        extensions = "all",
                    }
                },
                ["core.integrations.treesitter"] = {}
            },
        }
end,
}
