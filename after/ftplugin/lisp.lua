-- Function to format Lisp buffer and restore cursor position
local function format_lisp_on_save()
    local filetype = vim.bo.filetype
    if filetype == "lisp" then
        local current_pos = vim.fn.getpos(".")
        vim.api.nvim_feedkeys("gg=G", "n", false)
        vim.fn.setpos(".", current_pos)
    end
end

-- Attach the function to the BufWritePre autocmd for Lisp files
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.lisp",
    callback = format_lisp_on_save,
})
