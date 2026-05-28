local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  gh 'projekt0n/github-nvim-theme',
  gh 'cameron-wags/rainbow_csv.nvim',
  gh 'Tsuzat/NeoSolarized.nvim',
}

-- require('github-theme').setup {}
require('NeoSolarized').setup {
  style = 'light',
  transparent = false,
}

-- vim.cmd.colorscheme 'github_dark'
vim.cmd.colorscheme 'NeoSolarized'
vim.cmd.hi 'Comment gui=none'

require('rainbow_csv').setup()
