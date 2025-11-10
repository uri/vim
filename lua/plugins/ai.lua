return {
  {
    'github/copilot.vim',
  },
  {
    "echasnovski/mini.diff",
    config = function()
      local diff = require("mini.diff")
      diff.setup({
        -- Disabled by default
        source = diff.gen_source.none(),
      })
    end,
  },
  {
    "olimorris/codecompanion.nvim",
    keys = {
      { "<leader>ii", "<cmd>CodeCompanionActions<cr>",   desc = "Code Companion Command UI" },
      { "<leader>ie", "<cmd>CodeCompanion /explain<cr>", desc = "Code Companion Explain",        mode = "n" },
      { "<leader>ie", ":CodeCompanion /explain<cr>",     desc = "Code Companion Explain",        mode = "v" },
      { "<leader>if", ":CodeCompanion /fix<cr>",         desc = "Code Companion Fix",            mode = "v" },
      { "<leader>it", "<cmd>CodeCompanion /tests<cr>",   desc = "Code Companion Gen unit tests", mode = "v" },
    },
    cmd = {
      "CodeCompanion",
    },
    opts = {
      strategies = {
        -- chat = { adapter = { name = "copilot", model = "claude-sonnet-4" } },
        -- chat = { adapter = "openai" },
        chat = { adapter = "anthropic" },
        inline = { adapter = "anthropic" },
      },
      adapters = {
        anthropic = function()
          return require("codecompanion.adapters").extend("anthropic", {
            env = {
              api_key = "cmd: pass show solink/api-keys/anthropic"
            },
          })
        end,
        openai = function()
          return require("codecompanion.adapters").extend("openai", {
            env = {
              api_key = "cmd: pass show solink/api-keys/openai"
            },
          })
        end,
      }
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    }
  }
}
