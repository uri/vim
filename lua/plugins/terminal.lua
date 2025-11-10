return {
  {

    "mrjones2014/smart-splits.nvim",
    config = function()
      require("smart-splits").setup({
        at_edge = function(context)
          local dmap = {
            left = "west",
            down = "south",
            up = "north",
            right = "east",
          }
          if context.mux.current_pane_at_edge(context.direction) then
            local ydirection = dmap[context.direction]
            local command = "yabai -m window --focus " .. ydirection

            if ydirection == "west" or ydirection == "east" then
              command = command .. " || yabai -m display --focus " .. ydirection
            end

            vim.fn.system(command)
          end
        end,
      })
      vim.keymap.set('n', '<M-h>', require('smart-splits').move_cursor_left)
      vim.keymap.set('n', '<M-j>', require('smart-splits').move_cursor_down)
      vim.keymap.set('n', '<M-k>', require('smart-splits').move_cursor_up)
      vim.keymap.set('n', '<M-l>', require('smart-splits').move_cursor_right)
      vim.keymap.set('t', '<M-h>', require('smart-splits').move_cursor_left)
      vim.keymap.set('t', '<M-j>', require('smart-splits').move_cursor_down)
      vim.keymap.set('t', '<M-k>', require('smart-splits').move_cursor_up)
      vim.keymap.set('t', '<M-l>', require('smart-splits').move_cursor_right)
      vim.keymap.set('i', '<M-h>', function() vim.cmd('stopinsert'); require('smart-splits').move_cursor_left() end)
      vim.keymap.set('i', '<M-j>', function() vim.cmd('stopinsert'); require('smart-splits').move_cursor_down() end)
      vim.keymap.set('i', '<M-k>', function() vim.cmd('stopinsert'); require('smart-splits').move_cursor_up() end)
      vim.keymap.set('i', '<M-l>', function() vim.cmd('stopinsert'); require('smart-splits').move_cursor_right() end)
      vim.keymap.set('v', '<M-h>', function() vim.cmd('normal! \\<Esc>'); require('smart-splits').move_cursor_left() end)
      vim.keymap.set('v', '<M-j>', function() vim.cmd('normal! \\<Esc>'); require('smart-splits').move_cursor_down() end)
      vim.keymap.set('v', '<M-k>', function() vim.cmd('normal! \\<Esc>'); require('smart-splits').move_cursor_up() end)
      vim.keymap.set('v', '<M-l>', function() vim.cmd('normal! \\<Esc>'); require('smart-splits').move_cursor_right() end)
    end,
  }
}
