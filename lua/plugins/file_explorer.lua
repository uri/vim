local function nvim_tree_remove_mappings_custom(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  -- See https://github.com/nvim-tree/nvim-tree.lua/blob/master/lua/nvim-tree/keymap.lua#L46
  --  vim.keymap.set("n", "<C-e>",          api.node.open.replace_tree_buffer,  opts("Open: In Place"))
  vim.keymap.set('n', '<C-e>', '<C-e>', opts(""))
end

return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      on_attach = nvim_tree_remove_mappings_custom,
      view = {
        -- A table indicates that it should be dynamically sized
        width = {}
      },
      renderer = {
        symlink_destination = false
      }

    }
  },
  {
    'stevearc/oil.nvim',
    lazy = true,
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      keymaps = {
        ["<C-p>"] = false,
        ["<Tab>"] = "actions.preview",
      },
    },
    cmd = "Oil",
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  }
}
