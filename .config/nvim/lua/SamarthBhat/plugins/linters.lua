return {
  'mfussenegger/nvim-lint',
  event = { 'BufNewFile', 'BufReadPre' },
  opts = {
    linters_by_ft = {
      python = { 'ruff' },
      go = { 'gopls' },
      markdown = { 'vale' },
      text = { 'vale' },
    },
  },
  config = function()
    local lint = require 'lint'

    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
      group = lint_augroup,
      callback = function()
        require('lint').try_lint()
      end,
    })

    vim.keymap.set('n', '<leader>ll', function()
      lint.try_lint()
    end, { desc = 'Trigger linting for current file' })
  end,
}
