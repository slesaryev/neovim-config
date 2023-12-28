return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  config = function()
    local icons = require("core.icons")

    require("bufferline").setup({
      highlights = {
        fill = { bg = "NONE" },
      },
      options = {
        mode = "buffers",

        -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
        separator_style = "thin",

        offsets = {
          {
            filetype = "NvimTree",
            text = icons.file_tree .. " File Explorer",
            text_align = "left",
            highlight = "Directory",
            separator = true, -- use a "true" to enable the default, or set your own character
          },
          {
            filetype = "Outline",
            text = icons.code .. " Symbols",
            text_align = "left",
            highlight = "Directory",
            separator = true,
          },
        },
      },
    })

    vim.keymap.set("n", "H", "<cmd>BufferLineCyclePrev<CR>", { desc = icons.chevron_left .. " Previous open buffer" })
    vim.keymap.set("n", "L", "<cmd>BufferLineCycleNext<CR>", { desc = icons.chevron_right .. " Next open buffer" })
    vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineCloseLeft<CR>", { desc = icons.arrow_left .. " Close buffers to the left" })
    vim.keymap.set("n", "<leader>br", "<cmd>BufferLineCloseRight<CR>", { desc = icons.arrow_right .. " Close buffers to the right" })
    vim.keymap.set("n", "<leader>bc", "<cmd>conf bw<CR>:bp<CR>", { desc = icons.close .. " Close current buffer" })
    vim.keymap.set("n", "<leader>bC", "<cmd>BufferLineCloseOther<CR>", { desc = icons.close .. " Close other buffers" })
  end,
}
