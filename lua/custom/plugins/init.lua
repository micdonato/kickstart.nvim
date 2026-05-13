local function gh(repo)
  return 'https://github.com/' .. repo
end

vim.pack.add {
  gh 'projekt0n/github-nvim-theme',
  gh 'cameron-wags/rainbow_csv.nvim',
}

require('github-theme').setup {}
vim.cmd.colorscheme 'github_dark'
vim.cmd.hi 'Comment gui=none'

require('rainbow_csv').setup()
