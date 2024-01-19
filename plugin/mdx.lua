if not vim.version().prerelease then
  vim.api.nvim_err_writeln("mdx.nvim is only supported for the nightly version of Neovim.")
  return
end

if vim.g.loaded_mdx == 1 then
  return
end
vim.g.loaded_mdx = 1

local ft = "markdown.mdx"

vim.filetype.add({
  extension = {
    mdx = ft,
  },
})

vim.treesitter.language.register("markdown", ft)
