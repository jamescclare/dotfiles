local builtin = require('telescope.builtin')

local find_hidden_files = function () 
    builtin.find_files {
        find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden', '--no-ignore' },
    }
end

local grep_input_string = function ()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ph', find_hidden_files, {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
vim.keymap.set('n', '<leader>pl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ps', grep_input_string, {})
vim.keymap.set('n', '<leader>pS', builtin.grep_string, {})
