return {
    {
        "vlime/vlime",
        dependencies = {
            "HiPhish/nvim-cmp-vlime",
        },
        config = function()
            vim.g.vlime_window_settings = {
                repl = function()
                    return {
                        pos = "botright",
                        vertical = true -- Ensure the window is vertical
                    }
                end
            }
        end
    },
    {
        "monkoose/nvlime",
        enabled = false,
        dependencies = {
            "monkoose/parsley"
        }
    }
}
