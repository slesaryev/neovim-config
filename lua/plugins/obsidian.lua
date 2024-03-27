local icons = require("core.icons")

return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>nn", "<cmd>ObsidianNew<CR>", desc = icons.opacity .. " New note" },
    { "<leader>nd", "<cmd>ObsidianDailies<CR>", desc = icons.opacity .. " Dailies" },
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/ObsidianVaults/personal",
      },
    },
  },
}
