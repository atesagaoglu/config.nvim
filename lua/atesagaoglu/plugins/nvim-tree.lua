return{
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup ({
            filters = {
                dotfiles = true,
            },
        })
        vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>")
        vim.keymap.set("n", "<leader>tw", "<cmd>NvimTreeCollapse<CR>")
        vim.keymap.set("n", "<leader>te", "<cmd>NvimTreeFocus<CR>")
        vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFindFile<CR>")
    end
}
