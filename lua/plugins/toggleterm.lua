
require("toggleterm").setup({})

-- Налаштування клавіш для терміналу
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
end

-- Призначення клавіш при відкритті терміналу
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
