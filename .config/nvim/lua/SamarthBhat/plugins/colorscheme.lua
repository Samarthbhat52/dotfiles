return {
  {
    'vague2k/vague.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'vague'
    end,
    config = function()
      local vague = require 'vague'

      vague.setup {
        transparent = true,
      }
    end,
  },
  -- {
  --   'folke/tokyonight.nvim',
  --   priority = 1000,
  --   opts = {
  --     style = 'moon',
  --     transparent = true,
  --   },
  --   init = function()
  --     vim.cmd.colorscheme 'tokyonight-night'
  --
  --     -- You can configure highlights by doing something like:
  --     vim.cmd.hi 'Comment gui=none'
  --   end,
  -- },
}
