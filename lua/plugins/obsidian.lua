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
    { "<leader>nt", "<cmd>ObsidianTags<CR>", desc = icons.tag .. " Tags" },
  },
  opts = {
    workspaces = {
      {
        name = "notes",
        path = "~/notes/",
      },
    },
    templates = {
      subdir = ".templates",
      date_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
    },
    daily_notes = {
      folder = "dailies",
      date_format = "%Y-%m-%d",
      alias_format = "%B %-d, %Y",
      template = "daily.md",
    },
    -- note_id_func = function(title)
    --   if title ~= nil then
    --     return title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
    --   end
    --
    --   local random_letters = ""
    --   for _ = 1, 4 do
    --     random_letters = random_letters .. string.char(math.random(65, 90))
    --   end
    --
    --   return tostring(os.time()) .. "-" .. random_letters
    -- end,
  },
}
