-- Some servers have issues with backup files, see #649
vim.opt.backup = false
vim.opt.writebackup = false

-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience
-- vim.opt.updatetime = 300
vim.opt.updatetime = 50 -- CHANGE

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"

-- change
-- vim.opt.cmdheight = 2
-- vim.opt.shortmess += c

local keyset = vim.keymap.set
-- Autocomplete
function _G.check_back_space()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use Tab for trigger completion with characters ahead and navigate
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
-- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
-- other plugins before putting this into your config
local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
keyset("i", "<C-e>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<C-e>\<c-r>=coc#on_enter()\<C-e>"]], opts)

-- keyset("i", "<C-e>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-e>"]], opts)

-- Use <c-j> to trigger snippets
-- keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
-- Use <c-space> to trigger completion
keyset("i", "<c-space>", "coc#refresh()", { silent = true, expr = true })

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", { silent = true })
keyset("n", "]g", "<Plug>(coc-diagnostic-next)", { silent = true })

-- GoTo code navigation
keyset("n", "gd", "<Plug>(coc-definition)", { silent = true })
keyset("n", "g<C-v>", ":call CocAction('jumpDefinition', 'vsplit')<cr>")
keyset("n", "g<C-s>", ":call CocAction('jumpDefinition', 'split')<cr>")
keyset("n", "g<C-t>", ":call CocAction('jumpDefinition', 'tabe')<cr>")

-- Most lsp don't implement this. rust-analyzer does but it seems to do the same thing as definition.
-- keyset("n", "gD", "<Plug>(coc-declaration)", { silent = true })
keyset("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
keyset("n", "gi", "<Plug>(coc-implementation)", { silent = true })
keyset("n", "gR", "<Plug>(coc-references)", { silent = true })
keyset("n", "gr", "<Plug>(coc-references-used)", { silent = true })
-- missing declaration


-- Use K to show documentation in preview window
function _G.show_docs()
  local cw = vim.fn.expand('<cword>')
  if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
    vim.api.nvim_command('h ' .. cw)
  elseif vim.api.nvim_eval('coc#rpc#ready()') then
    vim.fn.CocActionAsync('doHover')
  else
    vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
  end
end

keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', { silent = true })


-- Highlight the symbol and its references on a CursorHold event(cursor is idle)
vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
  group = "CocGroup",
  command = "silent call CocActionAsync('highlight')",
  desc = "Highlight symbol under cursor on CursorHold"
})



-- Formatting selected code
keyset("x", "<leader>cF", "<Plug>(coc-format-selected)", { silent = true })
keyset("n", "<leader>cF", "<Plug>(coc-format-selected)", { silent = true })


-- Setup formatexpr specified filetype(s)
vim.api.nvim_create_autocmd("FileType", {
  group = "CocGroup",
  pattern = "typescript,json",
  command = "setl formatexpr=CocAction('formatSelected')",
  desc = "Setup formatexpr specified filetype(s)."
})

-- Update signature help on jump placeholder
vim.api.nvim_create_autocmd("User", {
  group = "CocGroup",
  pattern = "CocJumpPlaceholder",
  command = "call CocActionAsync('showSignatureHelp')",
  desc = "Update signature help on jump placeholder"
})

vim.api.nvim_create_autocmd("User", {
  group = 'CocGroup',
  pattern = "CocStatusChange",
  command = "redrawstatus",
})

-- Apply codeAction to the selected region
-- Example: `<leader>aap` for current paragraph
local opts = { silent = true, nowait = true }
keyset("x", "<leader>xx", "<Plug>(coc-codeaction-selected)", opts)
-- keyset("n", "<leader>xx", "<Plug>(coc-codeaction-selected)", opts)

keyset("n", "<leader>xx", "<Plug>(coc-codeaction)", opts)

-- Remap keys for apply code actions at the cursor position.
keyset("n", "<leader>xc", "<Plug>(coc-codeaction-cursor)", opts)
-- Remap keys for apply source code actions for current file.
keyset("n", "<leader>xs", "<Plug>(coc-codeaction-source)", opts)
-- Apply the most preferred quickfix action on the current line.
keyset("n", "<leader>xf", "<Plug>(coc-fix-current)", opts)

-- Remap keys for apply refactor code actions.
-- Symbol renaming
keyset("n", "<leader>rn", "<Plug>(coc-rename)", { silent = true })
keyset("n", "<leader>re", "<Plug>(coc-codeaction-refactor)", { silent = true })
keyset("x", "<leader>cr", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })
keyset("n", "<leader>cr", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })
keyset("n", "<leader>rr", "<Plug>(coc-refactor)", { silent = true })
keyset("n", "<leader>rf", ":call CocAction('runCommand', 'document.renameCurrentWord')<cr>", { silent = true })
keyset("n", "<leader>rx", "<Plug>(coc-cursors-operator)", { silent = true })


-- Run the Code Lens actions on the current line
keyset("n", "<leader>xl", "<Plug>(coc-codelens-action)", opts)


-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server
keyset("x", "if", "<Plug>(coc-funcobj-i)", opts)
keyset("o", "if", "<Plug>(coc-funcobj-i)", opts)
keyset("x", "af", "<Plug>(coc-funcobj-a)", opts)
keyset("o", "af", "<Plug>(coc-funcobj-a)", opts)
keyset("x", "ic", "<Plug>(coc-classobj-i)", opts)
keyset("o", "ic", "<Plug>(coc-classobj-i)", opts)
keyset("x", "ac", "<Plug>(coc-classobj-a)", opts)
keyset("o", "ac", "<Plug>(coc-classobj-a)", opts)


-- Remap <C-e> and <C-b> to scroll float windows/popups
---@diagnostic disable-next-line: redefined-local
local opts = { silent = true, nowait = true, expr = true }
keyset("n", "<C-e>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-e>"', opts)
keyset("n", "<C-y>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-y>"', opts)
-- keyset("i", "<C-e>",
--   'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<C-e>"', opts)
keyset("i", "<C-y>",
  'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<C-y>"', opts)
keyset("v", "<C-e>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-e>"', opts)
keyset("v", "<C-y>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-y>"', opts)

-- Use esc to close float
-- call coc#float#close_all()
-- set noh
keyset("n", "<ESC>", function()
  vim.cmd.noh()
  vim.fn['coc#float#close_all']()
  return '<ESC>'
end, opts)

-- Use CTRL-S for selections ranges
-- Requires 'textDocument/selectionRange' support of language server
keyset("n", "<C-s>", "<Plug>(coc-range-select)", { silent = true })
keyset("x", "<C-s>", "<Plug>(coc-range-select)", { silent = true })
keyset("n", "<C-M-s>", "<Plug>(coc-range-select-backward)", { silent = true })
keyset("x", "<C-M-s>", "<Plug>(coc-range-select-backward)", { silent = true })

-- Add `:Format` command to format current buffer
vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})

-- " Add `:Fold` command to fold current buffer
vim.api.nvim_create_user_command("Fold", "call CocAction('fold', <f-args>)", { nargs = '?' })

-- Add `:OR` command for organize imports of the current buffer
vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

-- Add (Neo)Vim's native statusline support
-- NOTE: Please see `:h coc-status` for integrations with external plugins that
-- provide custom statusline: lightline.vim, vim-airline
vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")

-- Mappings for CoCList
-- code actions and coc stuff
---@diagnostic disable-next-line: redefined-local
local opts = { silent = true, nowait = true }
-- Show all diagnostics
keyset("n", "<leader>cd", ":CocDiagnostics<cr>", opts)
keyset("n", "<leader>ca", ":<C-u>CocList diagnostics<cr>", opts)
-- Manage extensions
keyset("n", "<leader>ce", ":<C-u>CocList extensions<cr>", opts)
-- Show commands
keyset("n", "<leader>cp", ":<C-u>CocList commands<cr>", opts)
-- Find symbol of current document
keyset("n", "<leader>clo", ":<C-u>CocList outline<cr>", opts)
-- Search workleader symbols
keyset("n", "<leader>cs", ":<C-u>CocList -I symbols<cr>", opts)
-- Do default action for next item
-- keyset("n", "<leader>cj", ":<C-u>CocNext<cr>", opts)
keyset("n", "]r", ":<C-u>CocNext<cr>", opts)
keyset("n", "]R", ":<C-u>CocLast<cr>", opts)
-- Do default action for previous item
-- keyset("n", "<leader>ck", ":<C-u>CocPrev<cr>", opts)
keyset("n", "[r", ":<C-u>CocPrev<cr>", opts)
keyset("n", "[R", ":<C-u>CocFirst<cr>", opts)
-- Resume latest coc list
keyset("n", "<leader>cc", ":<C-u>CocListResume<cr>", opts)

keyset("n", "<leader>co", ":CocOutline<cr>")
keyset("n", "<leader>ch", ":call CocAction('showIncomingCalls')<cr>")
keyset("n", "<leader>cH", ":call CocAction('showOutgoingCalls')<cr>")
keyset("n", "<leader>ct", ":call CocAction('showSuperTypes')<cr>")
keyset("n", "<leader>cT", ":call CocAction('showSubTypes')<cr>")

-- Search
keyset("n", "<leader>fa", ":CocSearch<space>")
keyset("n", "<leader>ff", ":exe 'CocSearch ' . expand('<cword>')<cr>")
-- the following expands the file name withouth the extension
-- nnoremap <leader>sf :exe 'Ack! ' . expand('%:t:r')<cr>

-- Cursors
-- keyset("n", "C-n", "<Plug>(coc-cursors-position)", { silent = true })
-- Press <C-d> repeatedly to add next matches
vim.keymap.set("n", "<C-k>", function()
  -- Check if coc-cursors is active
  local active = vim.b.coc_cursors_activated or 0
  if active == 0 then
    -- Start a new multicursor session on the word under cursor
    vim.api.nvim_feedkeys(
      vim.api.nvim_replace_termcodes("<Plug>(coc-cursors-word)", true, false, true),
      "n",
      true
    )
  else
    -- Add next match and clear search highlight
    vim.api.nvim_feedkeys(
      vim.api.nvim_replace_termcodes("*<Plug>(coc-cursors-word):nohlsearch<CR>", true, false, true),
      "n",
      true
    )
  end
end, { silent = true, expr = false })
keyset("x", "<C-k>", "<Plug>(coc-cursors-range)", { silent = true })
-- keyset("n", "C-n", "<Plug>(coc-cursors-position)", { silent = true })
-- keyset("n", "C-n", "<Plug>(coc-cursors-position)", { silent = true })

vim.api.nvim_create_autocmd("DiffUpdated", {
  group = "CocGroup",
  pattern = { "*" },
  command = "let b:coc_enabled=0",
  desc = "Disable CoC when viewing diffs"
})

-- Go
vim.api.nvim_create_autocmd("BufWritePre", {
  group = "CocGroup",
  pattern = { "*.go" },
  command = "silent call CocAction('runCommand', 'editor.action.organizeImport')",
  desc = "Organize go imports on save"
})
