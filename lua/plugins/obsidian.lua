local icons = require("core.icons")

return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>nn", "<cmd>ObsidianNew<CR>", desc = icons.add .. " New note" },
    { "<leader>nd", "<cmd>ObsidianDailies<CR>", desc = icons.calendar .. " Dailies" },
    { "<leader>nr", "<cmd>ObsidianRename<CR>", desc = icons.edit .. " Rename" },
    { "<leader>nf", "<cmd>ObsidianSearch<CR>", desc = icons.search .. " Search" },
  },
  opts = {
    workspaces = {
      {
        name = "default",
        path = "~/ObsidianVault/",
      },
    },
  },
}
