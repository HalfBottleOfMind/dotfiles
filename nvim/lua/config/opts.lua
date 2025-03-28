local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.colorcolumn = '80'
opt.tabstop = 4
opt.shiftwidth = 4
opt.so = 999 -- Keep cursor in the middle of the screen

opt.termguicolors = true

-- Focuc on new split
opt.splitright = true
opt.splitbelow = true

opt.listchars='tab:→ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»'
opt.list = true

opt.clipboard = 'unnamedplus'

opt.laststatus = 3
