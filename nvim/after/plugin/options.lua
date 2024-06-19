local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.so = 999

opt.fileformat = "unix"

opt.termguicolors = true

opt.splitright = true
opt.splitbelow = true

opt.listchars='tab:→ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»'
opt.list = true

opt.clipboard = 'unnamedplus'

opt.laststatus = 3
opt.winbar = '%=%m %f'
