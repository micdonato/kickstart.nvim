local adrnote = {}

function adrnote.setup()
  local function open_adr_note()
    local template_path = os.getenv 'HOME' .. '/.config/nvim/templates/adr_template.md'
    local file = io.open(template_path, 'r')
    if not file then
      print('Error: Template file not found at ' .. template_path)
      return
    end

    local content = file:read '*a'
    file:close()

    vim.api.nvim_command 'enew' -- Create a new buffer
    vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(content, '\n')) -- Set the buffer content
  end

  -- Create a command `:AdrNote` that calls the function
  vim.api.nvim_create_user_command('Adrnote', open_adr_note, {})
end

return {
  setup = adrnote.setup(),
}
