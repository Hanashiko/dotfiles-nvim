
require("todo-comments").setup{
  signs = true, -- показувати іконки в колонці знаків
  sign_priority = 8, -- пріоритет знаку

  -- ключові слова, що розпізнаються як TODO-коментарі
  keywords = {
    FIX = {
      icon = " ", -- іконка для помилок
      color = "error", 
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, 
    },
    TODO = { icon = " ", color = "info" },
    HACK = { icon = " ", color = "warning" },
    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
  },
  merge_keywords = true, -- підсвічування рядків з TODO-коментарями

  -- підсвічування рядків з TODO-коментарями
  highlight = {
    before = "", -- перед ключовим словом
    keyword = "wide", -- саме ключове слово (широке — включає пробіли)
    after = "fg", -- після ключового слова
    pattern = [[.*<(KEYWORDS)\s*:]], -- шаблон для пошуку ключових слів
    comments_only = true, -- шукати тільки в коментарях (через treesitter)
    max_line_len = 400, -- ігнорувати довші рядки
    exclude = {}, -- виключені типи файлів
  },

  -- кольори для різних типів коментарів
  colors = {
    error = { "LspDiagnosticsDefaultError", "ErrorMsg", "#DC2626" },
    warning = { "LspDiagnosticsDefaultWarning", "WarningMsg", "#FBBF24" },
    info = { "LspDiagnosticsDefaultInformation", "#2563EB" },
    hint = { "LspDiagnosticsDefaultHint", "#10B981" },
    default = { "Identifier", "#7C3AED" },
  },

  -- пошук коментарів (ripgrep)
  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },
    pattern = [[\b(KEYWORDS):]], -- регулярка для пошуку ключових слів
  },
}
