local icons = require("core.icons")

return {
  "kdheepak/lazygit.nvim",
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>gg", "<cmd>LazyGitCurrentFile<CR>", desc = icons.git .. " LazyGit" }
  }
}
