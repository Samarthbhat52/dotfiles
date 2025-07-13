return {
  'folke/snacks.nvim',
  priority = 1100,
  lazy = false,
  ---@type snacks.Config
  opts = {
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    picker = { enabled = true },
  },
  keys = {
    {
      '<leader><space>',
      function()
        Snacks.picker.smart()
      end,
      desc = 'Smart Find Files',
    },
    {
      '<leader>/',
      function()
        Snacks.picker.grep_buffers()
      end,
      desc = 'Grep Open Buffers',
    },
    {
      '<leader>sg',
      function()
        Snacks.picker.grep()
      end,
      desc = '[S]earch [g]rep',
    },
    {
      '<leader>sw',
      function()
        Snacks.picker.grep_word()
      end,
      desc = 'Visual selection or word',
      mode = { 'n', 'x' },
    },
    {
      '<leader>sn',
      function()
        Snacks.picker.files { cwd = vim.fn.stdpath 'config' }
      end,
      desc = 'Find Config File',
    },
    {
      '<leader>sd',
      function()
        Snacks.picker.diagnostics()
      end,
      desc = '[S]earch [D]iagnostics',
    },
    {
      '<leader>sf',
      function()
        Snacks.picker.files()
      end,
      desc = '[S]earch [f]iles',
    },
    {
      '<leader>sk',
      function()
        Snacks.picker.keymaps()
      end,
      desc = 'Keymaps',
    },
    {
      '<leader>sh',
      function()
        Snacks.picker.help()
      end,
      desc = 'Help Pages',
    },
    {
      '<leader>of',
      function()
        Snacks.picker.files { cwd = vim.fn.expand '~' .. '/workspace/Brain' }
      end,
      desc = 'Search [o]bsidian [f]iles',
    },
    {
      '<leader>og',
      function()
        Snacks.picker.grep { cwd = vim.fn.expand '~' .. '/workspace/Brain' }
      end,
      desc = '[o]bsidian [g]rep',
    },
    {
      'gd',
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = 'Goto Definition',
    },
    {
      'gD',
      function()
        Snacks.picker.lsp_declarations()
      end,
      desc = 'Goto Declaration',
    },
    {
      'gr',
      function()
        Snacks.picker.lsp_references()
      end,
      nowait = true,
      desc = 'References',
    },
    {
      'gt',
      function()
        Snacks.picker.lsp_type_definitions()
      end,
      desc = 'Goto [t]ype Definition',
    },
  },
}
