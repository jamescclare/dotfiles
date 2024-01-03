vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.g.netrw_banner = 0

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("n", "<Up>", "<nop>")
vim.keymap.set("n", "<Down>", "<nop>")
vim.keymap.set("n", "<Left>", "<nop>")
vim.keymap.set("n", "<Right>", "<nop>")

-- vim.keymap.set("i", "<Up>", "<nop>")
-- vim.keymap.set("i", "<Down>", "<nop>")
-- vim.keymap.set("i", "<Left>", "<nop>")
-- vim.keymap.set("i", "<Right>", "<nop>")

vim.keymap.set("n", "<leader>a", vim.cmd.Alpha)

