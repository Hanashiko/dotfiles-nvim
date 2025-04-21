
-- Налаштовуємо комбінації клаві для різних функцій
local builtin = require('telescope.builtin')

-- Робота з файлами та буферами
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>ft', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Робота з Git
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})

-- Вибір кольорової схеми
vim.keymap.set('n', '<leader>cs', builtin.colorscheme, {})

