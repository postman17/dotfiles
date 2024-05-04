vim.api.nvim_create_user_command("Capath", function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    vim.notify('Copied absolute "' .. path .. '" to the clipboard!')
end, {})

