return {
    'nvim-focus/focus.nvim',
    enabled = false,
    version = false,
    config = function()
        require("focus").setup()
    end
}
