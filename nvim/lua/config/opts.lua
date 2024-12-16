local set = vim.opt

set.number = true
set.relativenumber = true
set.cursorline = true
set.so = 999 -- make cursor always in center

set.termguicolors = true

-- focus on splitted window
set.splitright = true
set.splitbelow = true

set.listchars='tab:→ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»'
set.list = true

set.clipboard = 'unnamedplus'

-- make single status bar
set.laststatus = 3

-- Codeium
-- vim.cmd [[ set statusline+=%3{v:lua.require('codeium.virtual_text').status_string()} ]]
