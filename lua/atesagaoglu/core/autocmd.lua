local function fetch_developer_excuse()
    local Job = require("plenary.job")
    Job:new({
        command = "curl",
        args = { "-s", "https://api.devexcus.es/" },
        on_exit = function(job, return_val)
            if return_val == 0 then
                local result = table.concat(job:result(), "\n")
                local success, excuse_data = pcall(vim.json.decode, result)
                if success and excuse_data and excuse_data.text then
                    print("☝️ 🤓 " .. excuse_data.text)
                else
                    print("Failed to decode or fetch an excuse.")
                end
            else
                print("Error fetching excuse. Curl return value: " .. return_val)
            end
        end,
    }):start()
end

vim.api.nvim_create_autocmd("VimEnter", {
    callback = fetch_developer_excuse,
})

vim.api.nvim_create_autocmd("VimEnter", {
    callback = fetch_developer_excuse,
})
