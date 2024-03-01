-- return {
--     'rose-pine/neovim',
--     as = 'rose-pine',
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require('rose-pine').setup({
--             variant = 'main',
--             styles = {
--                 italic = true
--             },
--         })
--         vim.cmd([[colorscheme rose-pine]])
--     end
-- }

return {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require('onedark').setup({
            ending_tildes = true
        })
        vim.cmd([[colorscheme onedark]])
    end
}
