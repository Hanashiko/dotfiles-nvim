
-- Основні налаштування
vim.g.did_load_filetypes = 1 -- Вимкнення старий метод визначення типів файлів (оптимізація)
vim.g.formatoptions = "qrn1" -- Форматування: q - коментарі, r - автодобавлення коментарів при Enter, n1 - автоіндентація
vim.opt.showmode = false -- Не показувати "-- INSERT --", бо статус бар і так це показує
vim.opt.updatetime = 100 -- Затримка для подій типу LSP, CursorHold (менше = швидше)
vim.wo.signcolumn = "yes" -- Завжди показувати колонку знаків (breakpoints, warnings)
vim.opt.wrap = false -- Не переносити рядки (зручно для коду)
vim.wo.linebreak = true -- Якщо `wrap = true`, не розривати слова (ігнорується тут)
vim.opt.virtualedit = "block" -- Дозволяє курсору заходити за кінець рядка в visual/block режимі
vim.opt.undofile = true -- Збергати історію змін між сесіями
vim.opt.shell = "/bin/zsh" -- Змінити оболонку (наприклад на bash, або fish)
vim.opt.swapfile = false -- Вимкнути .swp файли
vim.opt.encoding = "utf-8" -- UTF-8 Кодування файлів
vim.opt.cursorline = true -- Підсвічування активного рядку
vim.opt.fileformat = "unix" -- Формат файлів: unix (LF), можна змінити на dos (CRLF)

-- Nvim-Tree // вимкнення netrw
vim.g.loaded_netrw = 1 -- Вимикає netrw (щоб не заважав NvimTree)
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true -- Дозволити 24-bit кольори (потрібно для тем)

-- Скрол
vim.opt.so = 30 -- `scrolloff`: курсор тримається по центру (можна зменити до 8 або 10)

-- Пошук
vim.opt.ignorecase = true -- Пошук без урахування регістру
vim.opt.smartcase = true -- Але враховувати регістр, якщо у патерні є великі літери
vim.opt.hlsearch = true -- Підсвічувати всі знайдені збіги
vim.opt.incsearch = true -- Показувати збіги піч час введення (live-пошук)

-- Мишка
vim.opt.mouse = "a" -- Дозволити мишку в усіх режимах
vim.opt.mousefocus = true -- Клік мишкою одразу фокусує буфер

-- Нумерація рядків
vim.opt.number = true -- Ввімкнути абсолютні номери
vim.opt.relativenumber = false -- Відносні номери (можна true для vim-мувментів)

-- Вікна (спліти)
vim.opt.splitbelow = true -- Горизонтальні спліти знизу
vim.opt.splitright = true -- Вертикальні спліти справа

-- Буфер обміну
vim.opt.clipboard = "unnamedplus" -- Системний clipboard (Ctrl+C / Ctrl+V між Neovim і системою)

-- Повідомлення
vim.opt.shortmess:append("c") -- Менше спаму від меню автодоповнення

-- Відступи
vim.opt.expandtab = true -- Перетворвати таби в пробіли
vim.opt.shiftwidth = 4 -- Відступ (autoindent) = 4 пробіли
vim.opt.tabstop = 4 -- Ширина табу = 4 пробіли
vim.opt.softtabstop = 4 -- Кількість пробілів при натисканні TAB
vim.opt.smartindent = true -- Автоматичні відступи
vim.opt.cindent = true -- C-стиль відступів (для C-подібних мов)
vim.opt.smarttab = true -- TAB враховує shiftwidth, якщо на початку рядка

-- символи заповнення
vim.opt.fillchars = {
    vert = "│", -- Вертикальний розділювач
    fold = "⠀", -- Символ для згорнутих блоків
    eob = " ", -- Приховати ~ у порожньому кінці буфера
    msgsep = "‾", -- Роздільник повідомлень 
    foldopen = "▾", -- Відкритий fold 
    foldsep = "│", -- Роздільник fold 
    foldclose = "▸" -- Закритий fold
}

-- Очищення підсвітки для номери рядків та SignColumn (якщо не хочеш кольору для лівої панелі)
vim.cmd([[highlight clear LineNr]])
vim.cmd([[highlight clear SignColumn]])

-- Автоформатування PHP перед збереженням
-- Команда `e!` після форматування перезавантажує буфер, щоб зміни застосувались
vim.env.PHP_CS_FIXER_IGNORE_ENV = "1"
vim.api.nvim_exec([[
    augroup fmt 
        autocmd!
        autocmd BufWritePre *.php !php-cs-fixer fix % --quiet --diff && e!
    augroup END 
]], true)


