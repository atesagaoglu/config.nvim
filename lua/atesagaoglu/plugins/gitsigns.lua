return {
    'lewis6991/gitsigns.nvim',
    config = function()
        require("gitsigns").setup({
            numhl = true,
            signcolumn = true
        })
    end
}
