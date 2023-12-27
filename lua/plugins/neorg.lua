local icons = require("core.icons")

return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>oo", "<cmd>Neorg<cr>", desc = icons.menu .. " Open neorg menu" },
  },
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {},  -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.completion"] = { config = { name = "[Neorg]", engine = "nvim-cmp" } },
        ["core.dirman"] = {      -- Manages Neorg workspaces
          config = {
            workspaces = {
              default = "~/notes",
            },
          },
        },
      },
    }
  end,
}
