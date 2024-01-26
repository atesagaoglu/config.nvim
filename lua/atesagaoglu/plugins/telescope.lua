return{
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        -- ff: files fuzzy
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Open Telescope"})
        -- gf: files git
        vim.keymap.set('n', '<leader>gf', builtin.git_files, {desc = "Open Telescope git only"})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    end
}
