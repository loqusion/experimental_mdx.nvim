local supported_version = vim.version.range(">=0.10.1")
---@diagnostic disable-next-line: invisible
if not supported_version or not supported_version:has(vim.version()) then
  vim.api.nvim_err_writeln("mdx.nvim is only supported for Neovim >=0.10.0.")
  return
end

if vim.g.loaded_mdx == 1 then
  return
end
vim.g.loaded_mdx = 1

local filetype = "mdx"
local treesitter_filetypes = {
  filetype,
  "markdown.mdx",
}

vim.filetype.add({
  extension = {
    mdx = filetype,
  },
})

for _, ft in ipairs(treesitter_filetypes) do
  vim.treesitter.language.register("markdown", ft)
end
