vim.opt.termguicolors = true
vim.o.background = 'dark'

local vscode = require(vim.g.vscode and 'vscode.init' or 'vscode')

vscode.setup {
  terminal_colors = true,
}

local function use_light_theme()
  vim.o.background = 'light'
  vscode.load('light')
end

local function use_dark_theme()
  vim.o.background = 'dark'
  vscode.load('dark')
end

vim.api.nvim_create_user_command('ThemeLight', use_light_theme, { desc = 'Use VS Code light theme' })
vim.api.nvim_create_user_command('ThemeDark', use_dark_theme, { desc = 'Use VS Code dark theme' })

if vim.g.vscode then
  vscode.load('dark')
else
  vim.cmd.colorscheme('vscode')
end
