local ft = "markdown.mdx"
local pattern = { "*.mdx" }

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = pattern,
  callback = function(ev)
    vim.api.nvim_set_option_value("filetype", ft, {
      buf = ev.buf,
    })
  end,
})
