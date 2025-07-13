return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      local keymap = vim.keymap

      keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end)
      keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      keymap.set('n', '<leader>1', function()
        harpoon:list():select(1)
      end)
      keymap.set('n', '<leader>2', function()
        harpoon:list():select(2)
      end)
      keymap.set('n', '<leader>3', function()
        harpoon:list():select(3)
      end)
      keymap.set('n', '<leader>4', function()
        harpoon:list():select(4)
      end)

      -- Toggle previous & next buffers stored within Harpoon list
      keymap.set('n', '<C-S-P>', function()
        harpoon:list():prev()
      end)
      keymap.set('n', '<C-S-N>', function()
        harpoon:list():next()
      end)
    end,
  },
}
