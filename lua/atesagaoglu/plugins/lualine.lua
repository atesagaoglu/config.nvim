return{
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
        require('lualine').setup ({
            options = {
                theme = 'tokyonight',
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'filetype', 'filename'},
                lualine_c = {'branch', 'diff', 'diagnostics'},
                lualine_x = {'diff'},
                lualine_y = {'encoding', 'fileformat'},
                lualine_z = {'location'}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
            },
        })
    end
}
