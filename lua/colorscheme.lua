vim.opt.termguicolors = true

local vscode = require(vim.g.vscode and 'vscode.init' or 'vscode')

vscode.setup {
  terminal_colors = true,
}

local function load_theme()
  -- Let Neovim set `background`; vscode.nvim reads the current value.
  vscode.load()
end

vim.api.nvim_create_autocmd('OptionSet', {
  pattern = 'background',
  callback = load_theme,
})

vim.api.nvim_create_user_command('ThemeLight', function()
  vim.o.background = 'light'
end, { desc = 'Use VS Code light theme' })

vim.api.nvim_create_user_command('ThemeDark', function()
  vim.o.background = 'dark'
end, { desc = 'Use VS Code dark theme' })

-- OptionSet does not run for the initial value.
load_theme()
