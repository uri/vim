return {
  "OmniSharp/omnisharp-vim",
  ft = { "cs" },
  config = function()
    vim.g.OmniSharp_server_use_net6 = 1
    -- Set completion options
    vim.opt.completeopt = { "longest", "menuone", "preview" }
    -- Set preview window height
    vim.opt.previewheight = 5

    -- Create autocommands
    local augroup = vim.api.nvim_create_augroup("omnisharp_commands", {
      clear = true
    })

    -- Show type information automatically when cursor stops
    vim.api.nvim_create_autocmd("CursorHold", {
      group = augroup,
      pattern = "*.cs",
      callback = function()
        vim.cmd("OmniSharpTypeLookup")
      end,
    })

    -- Set up keymaps for C# files
    vim.api.nvim_create_autocmd("FileType", {
      group = augroup,
      pattern = "cs",
      callback = function()
        local opts = { buffer = true, silent = true }

        -- Navigation and information
        vim.keymap.set("n", "gd", "<Plug>(omnisharp_go_to_definition)", opts)
        vim.keymap.set("n", "gr", "<Plug>(omnisharp_find_usages)", opts)
        vim.keymap.set("n", "gi",
          "<Plug>(omnisharp_find_implementations)", opts)
        vim.keymap.set("n", "gC-v", "<Plug>(omnisharp_preview_definition)",
          opts)
        vim.keymap.set("n", "<Leader>ospi",
          "<Plug>(omnisharp_preview_implementations)", opts)
        vim.keymap.set("n", "gy", "<Plug>(omnisharp_type_lookup)", opts)
        vim.keymap.set("n", "K", "<Plug>(omnisharp_documentation)", opts)
        vim.keymap.set("n", "<Leader>cs", "<Plug>(omnisharp_find_symbol)", opts)
        vim.keymap.set("n", "<Leader>cx", "<Plug>(omnisharp_fix_usings)", opts)

        -- Signature help
        vim.keymap.set("n", "<C-\\>", "<Plug>(omnisharp_signature_help)", opts)
        vim.keymap.set("i", "<C-\\>", "<Plug>(omnisharp_signature_help)", opts)

        -- Navigate by method/property/field
        vim.keymap.set("n", "[[", "<Plug>(omnisharp_navigate_up)", opts)
        vim.keymap.set("n", "]]", "<Plug>(omnisharp_navigate_down)", opts)

        -- Code check
        vim.keymap.set("n", "<Leader>osgcc", "<Plug>(omnisharp_global_code_check)",
          opts)

        -- Code actions
        vim.keymap.set("n", "<Leader>xx", "<Plug>(omnisharp_code_actions)", opts)
        vim.keymap.set("x", "<Leader>xa", "<Plug>(omnisharp_code_actions)", opts)
        vim.keymap.set("n", "<Leader>os.", "<Plug>(omnisharp_code_action_repeat)",
          opts)
        vim.keymap.set("x", "<Leader>os.", "<Plug>(omnisharp_code_action_repeat)",
          opts)

        -- Formatting and refactoring
        vim.keymap.set({ "n", "v" }, "<Leader>xF", "<Plug>(omnisharp_code_format)", opts)
        vim.keymap.set("n", "<Leader>rr", "<Plug>(omnisharp_rename)", opts)

        -- Server management
        vim.keymap.set("n", "<Leader>osre", "<Plug>(omnisharp_restart_server)",
          opts)
        vim.keymap.set("n", "<Leader>osst", "<Plug>(omnisharp_start_server)", opts)
        vim.keymap.set("n", "<Leader>ossp", "<Plug>(omnisharp_stop_server)", opts)
      end,
    })
  end,
}
