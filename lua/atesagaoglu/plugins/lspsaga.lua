return{
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    config = function()
        require("lspsaga").setup({
            hover = {
                open_link = "x",
            },
            code_action = {
                show_server_name = true
            },
        })

        vim.keymap.set("n", "<leader>sh", "<cmd>:Lspsaga hover_doc<CR>")
        vim.keymap.set("n", "<leader>sa", "<cmd>:Lspsaga code_action<CR>")
        vim.keymap.set("n", "<leader>sr", "<cmd>:Lspsaga rename<CR>")
    end,
}
