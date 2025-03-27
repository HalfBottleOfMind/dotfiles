-- Execute Lua code
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<cr>", { desc = "Source current file" })
vim.keymap.set("n", "<leader>x", ":.lua<cr>", { desc = "Source current line" })
vim.keymap.set("v", "<leader>x", ":lua<cr>", { desc = "Source selected lines" })

-- Oil
vim.keymap.set("n", "-", function()
  require("oil").open()
end, { desc = "Open parent directory" })

-- Windows navigation
vim.keymap.set({"n", "t"}, "<C-h>", ":wincmd h<cr>", { desc = "Go to left window" })
vim.keymap.set({"n", "t"}, "<C-l>", ":wincmd l<cr>", { desc = "Go to right window" })
vim.keymap.set({"n", "t"}, "<C-j>", ":wincmd j<cr>", { desc = "Go to bottom window" })
vim.keymap.set({"n", "t"}, "<C-k>", ":wincmd k<cr>", { desc = "Go to top window" })

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find text in files" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find help" })
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", { desc = "Find diagnostics" })
