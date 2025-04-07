local M = {}

-- Check if a plugin is installed
M.is_plugin_installed = function(name)
    local ok, _ = pcall(require, name)
    return ok
end

-- Print a debug message
M.debug = function(msg)
    vim.api.nvim_echo({ { "DEBUG: " .. msg, "WarningMsg" } }, true, {})
end

-- Toggle between absolute and relative line numbers
M.toggle_relative_numbers = function()
    if vim.opt.relativenumber:get() then
        vim.opt.relativenumber = false
    else
        vim.opt.relativenumber = true
    end
end

-- Map leader key commands more easily
M.map = function(mode, lhs, rhs, opts)
    opts = opts or { noremap = true, silent = true }
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

return M

