vim.opt_local.conceallevel = 2
vim.opt_local.concealcursor = "n"
vim.opt_local.textwidth=120

function Concursor()
   local val = vim.fn.execute('echo &concealcursor')
   if val == '\n' then
      vim.opt.concealcursor = "n"
   else
      vim.opt.concealcursor = ""
   end
end

vim.api.nvim_buf_set_keymap(0, "n", "<localleader>ct", [[:Neorg toggle-concealer<CR>]], {noremap = true, silent=true})
vim.api.nvim_buf_set_keymap(0, "n", "<localleader>cc", [[:lua Concursor()<CR>]], {noremap = true, silent=true})
