local icons = require("core.icons")

return {
  "nvimdev/lspsaga.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  event = { "LspAttach" },
  config = function()
    require("lspsaga").setup({
      -- Breadcrumbs
      symbol_in_winbar = {
        show_file = false,
      },
      ui = {
        code_action = "", -- icons.light_bulb,
      },
    })

    local keymap = vim.keymap
    local opts = { noremap = true, silent = true }

    opts.desc = icons.info .. " Show documentation for what is under cursor"
    keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)

    opts.desc = icons.reference .. " LSP finder"
    keymap.set("n", "<leader>cf", "<cmd>Lspsaga finder<CR>", opts)

    opts.desc = icons.prev .. " Go to previous diagnostic"
    keymap.set("n", "[d", "<Cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer

    opts.desc = icons.next .. "Go to next diagnostic"
    keymap.set("n", "]d", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer

    opts.desc = icons.bug .. " Show line diagnostics"
    keymap.set("n", "<leader>cd", "<Cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show diagnostics for line

    opts.desc = icons.bug .. " Show buffer diagnostics"
    keymap.set("n", "<leader>cD", "<cmd>Lspsaga show_buf_diagnostics<CR>", opts) -- show  diagnostics for file

    opts.desc = icons.lightning_bolt .. " See available code actions"
    keymap.set({ "n", "v" }, "<leader>ca", "<Cmd>Lspsaga code_action<CR>", opts) -- see available code actions, in visual mode will apply to selection

    opts.desc = icons.word .. " Smart rename"
    vim.keymap.set("n", "<leader>cr", "<Cmd>Lspsaga rename<CR>", opts) -- smart rename

    opts.desc = icons.file_tree .. " Symbols outline"
    keymap.set("n", "<leader>cS", "<cmd>Lspsaga outline<CR>", opts) -- show  diagnostics for file

    opts.desc = icons.search .. " Peek definition"
    keymap.set("n", "<leader>cp", "<cmd>Lspsaga peek_definition<CR>", opts) -- show  diagnostics for file

    opts.desc = icons.search .. " Peek type definition"
    keymap.set("n", "<leader>cP", "<cmd>Lspsaga peek_type_definition<CR>", opts) -- show  diagnostics for file
  end,
}
