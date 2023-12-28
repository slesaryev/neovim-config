local opt = vim.opt

-- general
opt.termguicolors = true
opt.clipboard:append("unnamedplus")
opt.backspace = "indent,eol,start"
opt.swapfile = false
opt.splitright = true
opt.splitbelow = true

-- line numbers & cursor line
opt.relativenumber = true
opt.number = true
opt.cursorline = true

-- tabs, indent & wrap
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = false

-- search
opt.ignorecase = true
opt.smartcase = true

-- misc
-- opt.background = "dark"
opt.signcolumn = "yes"

opt.scrolloff = 10
