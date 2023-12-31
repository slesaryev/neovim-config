require("core")

local icons = require("core.icons")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "plugins" },
}, {
  install = {
    -- colorscheme = { "catppuccin" },
  },
  checker = {
    enabled = true,
    notify = true,
  },
  change_detection = {
    notify = false,
  },
})

vim.keymap.set("n", "<leader>up", "<cmd>Lazy<CR>", { desc = icons.puzzle .. " Plugin management" })
vim.keymap.set("n", "<leader>uP", "<cmd>Lazy sync<CR>", { desc = icons.puzzle_check .. " Plugins update" })
