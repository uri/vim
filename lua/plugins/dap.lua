return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      vim.keymap.set('n', '<F5>', function() require('dap').continue() end, { desc = 'Continue' })
      vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
      vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
      vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
      vim.keymap.set('n', '<Leader>db', function() require('dap').toggle_breakpoint() end, { desc = 'Toggle breakpoint' })
      vim.keymap.set('n', '<Leader>dB', function() require('dap').set_breakpoint() end, { desc = 'Set breakpoint' })
      vim.keymap.set('n', '<Leader>dlp',
        function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end,
        { desc = 'Log message' })
      vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end, { desc = 'Open REPL' })
      vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end, { desc = 'Run last' })
      vim.keymap.set({ 'n', 'v' }, '<Leader>dh', function()
        require('dap.ui.widgets').hover()
      end, { desc = 'Hover' })
      vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function()
        require('dap.ui.widgets').preview()
      end, { desc = 'Preview' })
      vim.keymap.set('n', '<Leader>df', function()
        local widgets = require('dap.ui.widgets')
        widgets.centered_float(widgets.frames)
      end)
      vim.keymap.set('n', '<Leader>ds', function()
        local widgets = require('dap.ui.widgets')
        widgets.centered_float(widgets.scopes)
      end)
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "nvim-neotest/nvim-nio" },
    config = function()
      require("dapui").setup()

      local dap, dapui = require("dap"), require("dapui")
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end
  },
  { "leoluz/nvim-dap-go", config = true }
}
