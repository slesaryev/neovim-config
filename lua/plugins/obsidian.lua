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
    new_notes_location = "current_dir",
    templates = {
      subdir = "99 - Meta/Templates",
      date_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
    },
    daily_notes = {
      folder = "05 - Daily",
      date_format = "%Y-%m-%d",
      alias_format = "%B %-d, %Y",
      template = "(TEMPLATE) Daily (Vanilla).md",
    },
    note_id_func = function(title)
      local suffix = ""
      if title ~= nil then
        suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        -- If title is nil, just add 4 random uppercase letters to the suffix.
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return tostring(os.date("%Y%m%d%H%M", os.time())) .. "-" .. suffix
    end,
  },
}
