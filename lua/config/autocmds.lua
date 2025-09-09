-- /home/karina/.config/nvim/lua/config/autocmds.lua
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Highlight text on yank
local YankGroup = augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
  group = YankGroup,
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

-- Close certain filetypes with `q`
autocmd("FileType", {
  pattern = { "help", "qf", "fugitive" },
  command = "nnoremap <buffer><silent> q :close<CR>",
})

