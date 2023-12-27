return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  config = function()
    local icons = require("core.icons")
    local wk = require("which-key")
    wk.setup({
      icons = {
        group = "",
      }
    })
    wk.register({
      ["<leader>"] = {
        b = { name = icons.files .. " Buffer" },
        f = { name = icons.search .. " Find" },
        g = { name = icons.git .. " Git" },
        l = { name = icons.code .. " LSP" },
        o = { name = icons.notes .. " Org mode" },
        u = { name = icons.windows .. " UI" },
      }
    })
  end,
}
