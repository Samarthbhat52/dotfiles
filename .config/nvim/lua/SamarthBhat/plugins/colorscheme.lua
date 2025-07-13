return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    opts = {
      style = 'moon',
      transparent = true,
    },
    init = function()
      vim.cmd.colorscheme 'tokyonight-night'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  -- {
  --   'rose-pine/neovim',
  --   priority = 1000,
  --   name = 'rose-pine',
  --   config = function()
  --     vim.cmd 'colorscheme rose-pine'
  --   end,
  -- },
  -- {
  --   'rebelot/kanagawa.nvim',
  --   priority = 1000,
  --   config = function()
  --     vim.cmd 'colorscheme kanagawa-dragon'
  --   end,
  -- },
}
