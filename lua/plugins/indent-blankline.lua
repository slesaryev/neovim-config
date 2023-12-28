return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("ibl").setup({
      debounce = 100,
      indent = { char = "" }, -- TODO: ugly character to replace
      whitespace = { highlight = { "Whitespace", "NonText" } },
      -- scope = { exclude = { language = { "lua" } } },
    })
  end,
}
