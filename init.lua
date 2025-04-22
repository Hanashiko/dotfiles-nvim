
-- Базові налаштування
require('core.plugins') -- Підключення менеджера плагінів (lazy.nvim)
require('core.mappings') -- Гарячі клавіші та мапінги
require('core.colors') -- Теми/схеми кольорів
require('core.configs') -- Інші налаштування редактора (опції, поведінка, тощо)

-- Плагіни
require('plugins.nvim-tree') -- Файловий менеджер
require('plugins.treesitter') -- Підсвітка синтаксису
require('plugins.lsp') -- LSP-сервери
require('plugins.cmp') -- Автодоповнення
require('plugins.mason') -- Менеджер LSP/лінтерів/форматерів
require('plugins.telescope') -- Пошук файлів, grep, буфери тощо
require('plugins.dashboard') -- Стартова сторінка
require('plugins.colorizer') -- Підсвічування кольорів (#RRGGBB)
require('plugins.lualine') -- Нижній статусбар
require('plugins.cellular') -- Клітинкові анімації (фан)
require('plugins.comment') -- Коментування коду
require('plugins.bufferline') -- Вкладки буферів (Tab'u)
require('plugins.todo') -- TODO/FIXME коментарі з інтеграцією пошуку
require('plugins.trouble') -- UI для діагностики і списків помилок
require('plugins.toggleterm') -- Вбудований термінал
require('plugins.whichkey') -- Підказки для гарячих клавіш
require('plugins.mini') -- Легка колекція плагінів (руху тексту, автопари, тощо)
