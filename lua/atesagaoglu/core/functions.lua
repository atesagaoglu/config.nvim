function ToggleDualLineNumbers()
    if vim.o.statuscolumn == "%s %l %r " then
        vim.o.statuscolumn = ""
    else
        vim.o.statuscolumn = "%s %l %r "
    end
end
