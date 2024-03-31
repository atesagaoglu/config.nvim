return{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        vim.keymap.set("n", "<leader>tt", "<cmd>Neotree<CR>")
        vim.keymap.set("n", "<leader>tf", "<cmd> Neotree float<CR>")
        vim.keymap.set("n", "<leader>ts", "<cmd>Neotree right<CR>")
        vim.keymap.set("n", "<leader>tb", "<cmd>Neotree buffers float<CR>")
        vim.keymap.set("n", "<leader>tg", "<cmd>Neotree git_status<CR>")
        require("neo-tree").setup({
            close_if_last_window=true,
            popup_border_style = "rounded",
            window = {
                position = "current",
                mappings = {
                    ["E"] = "toggle_node",
                    ["W"] = "open",
                }
            },
            git_status = {
                symbols = {
                    -- Change type
                    deleted   = "",-- this can only be used in the git_status source
                    renamed   = "󰁕",-- this can only be used in the git_status source
                    -- Status type
                    untracked = "",
                    ignored   = "",
                    unstaged  = "✗",
                    staged    = "✓",
                    conflict  = "",
                }
            },
        })
    end
}
