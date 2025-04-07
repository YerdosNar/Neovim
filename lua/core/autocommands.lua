local autocmd = vim.api.nvim_create_autocmd

-- Automatically reload the file when it changes outside of Neovim
autocmd("BufWritePost", {
    pattern = "*",
    command = "checktime",
})

-- Highlight text on yank (copy)
autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
    end,
})

-- Remove trailing whitespace on save
autocmd("BufWritePre", {
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

-- Automatically enter insert mode when opening a terminal
autocmd("TermOpen", {
    pattern = "*",
    command = "startinsert",
})

-- Close certain buffers with `q`
autocmd("FileType", {
    pattern = { "help", "qf", "fugitive" },
    command = "nnoremap <buffer> q :close<CR>",
})

