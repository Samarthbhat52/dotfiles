require 'SamarthBhat.core.remap'
require 'SamarthBhat.core.options'

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Show linters for the current buffer's file type
vim.api.nvim_create_user_command('LintInfo', function()
  local filetype = vim.bo.filetype
  local linters = require('lint').linters_by_ft[filetype]

  if linters then
    print('Linters for ' .. filetype .. ': ' .. table.concat(linters, ', '))
  else
    print('No linters configured for filetype: ' .. filetype)
  end
end, {})
