vim.cmd [[
  augroup removeTrailingWhitespace
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
  augroup end
]]
