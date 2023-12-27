-- generic plugins which doesn't require configuration
return {
  { "nvim-lua/plenary.nvim" },
  { "christoomey/vim-tmux-navigator" },
  { "inkarkat/vim-ReplaceWithRegister" },
  { "stevearc/dressing.nvim",          event = "VeryLazy" },
  { "karb94/neoscroll.nvim",           event = { "BufReadPre", "BufNewFile" }, opts = true }
}
