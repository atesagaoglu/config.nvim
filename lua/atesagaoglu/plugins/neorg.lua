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
                            personal = '~/neorg/personal/',
                            uni = '~/neorg/uni/',
                            ref = '~/neorg/ref/'
                        },
                        default_workspace = 'personal'
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
