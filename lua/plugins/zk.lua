return {
  "zk-org/zk-nvim",
  config = function()
    require("zk").setup({
      -- Can be "telescope", "fzf", "fzf_lua", "minipick", "snacks_picker",
      -- or select" (`vim.ui.select`).
      picker = "select",
    })
  end,
}
