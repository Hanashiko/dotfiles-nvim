
-- Лідер-клавіша
vim.g.mapleader = " "

-- Вийти
vim.keymap.set('n', '<C-q>', '<cmd>:q<CR>')

-- Скопіювати вест текст у буфер
vim.keymap.set('n', '<C-a>', '<cmd>%y+<CR>')

-- Зберегти файл
vim.keymap.set('i', '<C-s>', '<cmd>:w<CR>')
vim.keymap.set('n', '<C-s>', '<cmd>:w<CR>')

-- Файловий менеджер NvimTree
vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>tf', ':NvimTreeFocus<CR>')

-- Перемикання буферів
vim.keymap.set('n','<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n','<S-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<C-l>', ':BufferLineCloseOthers<CR>')

-- Список TODO
vim.keymap.set('n', '<leader>nl', ':TodoTelescope<CR>')

-- Термінал
vim.keymap.set('n', '<leader>s', ':ToggleTerm direction=float<CR>')
