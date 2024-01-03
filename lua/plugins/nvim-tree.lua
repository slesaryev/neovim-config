local icons = require("core.icons")
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>e", "<cmd>NvimTreeFindFileToggle<cr>", desc = icons.file_tree .. " Explorer" },
  },
  config = function()
    -- Recommended by the documentation (:h nvim-tree-quickstart-setup)
    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = {}, -- dynamic width
      },
      renderer = {
        group_empty = true,
        indent_markers = {
          enable = true,
        },
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        dotfiles = true,
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
      update_focused_file = {
        enable = true,
      },
    })
  end,
}
