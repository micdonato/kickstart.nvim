local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  gh 'projekt0n/github-nvim-theme',
  gh 'cameron-wags/rainbow_csv.nvim',
  gh 'Tsuzat/NeoSolarized.nvim',
  gh 'Vigemus/iron.nvim',
  gh 'NeogitOrg/neogit',
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

require('neogit').setup {}
vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<CR>', { desc = 'Open Neogit UI' })

do
  local iron = require 'iron.core'
  local view = require 'iron.view'
  local common = require 'iron.fts.common'

  iron.setup {
    config = {
      scratch_repl = true,
      repl_definition = {
        python = {
          command = { 'python3' },
          format = common.bracketed_paste_python,
          block_dividers = { '# %%', '#%%' },
          env = { PYTHON_BASIC_REPL = '1' },
        },
      },
      repl_open_cmd = view.right(60),
    },
    keymaps = {
      send_line = '<leader>rl',
      visual_send = '<leader>rc',
      send_file = '<leader>rf',
      interrupt = '<leader>rr<leader>',
      exit = '<leader>rq',
      send_until_cursor = '<leader>ru',
      clear = '<leader>cl',
      send_code_block_and_move = '<leader>rn',
    },
    ignore_blank_lines = true,
  }
end
