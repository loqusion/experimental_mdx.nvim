if not vim.version().prerelease then
  vim.api.nvim_err_writeln("mdx.nvim is only supported for the nightly version of Neovim.")
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
