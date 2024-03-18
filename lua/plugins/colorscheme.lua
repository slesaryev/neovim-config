local icons = require("core.icons")

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    -- priority = 1000,
    -- config = function()
    --   vim.cmd.colorscheme "catppuccin"
    -- end,
  },

  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        -- ...
      })

      vim.cmd("colorscheme github_light")
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
        "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
        "NvimTreeNormal", -- NvimTree
      },
    },
  },
}
