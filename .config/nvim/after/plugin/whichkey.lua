vim.o.timeout = true
vim.o.timeoutlen = 500

require("which-key").setup{
    plugins = {
        marks = true,
        spelling = {
            enabled = true,
            suggestions = 20,
        },
        presets = {
            g = true
        },
    },
    operators = { gc = "Comments" },
    popup_mappings = {
        scroll_down = "<c-d>", -- binding to scroll down inside the popup
        scroll_up = "<c-u>", -- binding to scroll up inside the popup
    },
}

