local icons = require("core.icons")

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin"
    end,
  },

  -- making nvim transparent, remove if you don't like it
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    keys = {
      { "<leader>ut", "<cmd>TransparentToggle<CR>", desc = icons.opacity .. " Toggle transparency" },
    },
    opts = {
      extra_groups = {
        "NormalFloat",   -- plugins which have float panel such as Lazy, Mason, LspInfo
        "NvimTreeNormal" -- NvimTree
      },
    }
  }
}
