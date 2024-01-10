return{
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        -- ff: files fuzzy
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        -- gf: files git
        vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
    end
}
