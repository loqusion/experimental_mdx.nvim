local filetypes = {
  "markdown",
  "mdx",
}
local filetype_value = vim.fn.join(filetypes, ".")
local pattern = { "*.mdx" }

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = pattern,
  callback = function(ev)
    vim.api.nvim_set_option_value("filetype", filetype_value, {
      buf = ev.buf,
    })
  end,
})
