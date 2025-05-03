-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup {
    actions = {
        open_file = {
            quit_on_open = true,
        }
    }
}

local api = require("nvim-tree.api")

local function open_tree()
    api.tree.open {
        current_window = true,
        find_file = true,
    }
end

vim.keymap.set("n", "<leader>pv", open_tree, { desc = "File tree (nvim-tree)" })

