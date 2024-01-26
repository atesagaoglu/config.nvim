return{
    'LukasPietzschmann/telescope-tabs',
    config = function()
        require('telescope').load_extension 'telescope-tabs'
        require('telescope-tabs').setup {
            -- Your custom config :^)
            vim.keymap.set("n", "<leader>ft", "<cmd>Telescope telescope-tabs list_tabs<CR>", {desc = "Toggle NvimTree"})
        }
    end,
    dependencies = { 'nvim-telescope/telescope.nvim' },
}
