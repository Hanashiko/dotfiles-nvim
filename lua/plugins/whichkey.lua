
local wk = require("which-key")

wk.register({
	f = {
		name = "Gjier",
		f = {":Telescope find_files<CR>", "Файли"},
		t = {":Telescope live_grep<CR>", "Текст"},
		b = {":Telescope buffers<CR>", "Буфери"},
		h = {":Telescope help_tags<CR>", "Довідка"},
	},

	g = {
		name = "Git",
		b = {":Telescope git_branches<CR>", "Гілки"},
		c = {":Telescope git_commits<CR>", "Коміти"},
		s = {":Telescope git_status<CR>", "Статус"},
	},

    e = {":lua vim.diagnostic.open_float()<CR>", "Вікно діагностики"},

    l = {
        name = "LSP",
        D = {":lua vim.lsp.bud.declaration()<CR>"}, "Оголошення",
        d = {":lua vim.lsp.buf.definition()<CR>", "Визначення"},
        k = {":lua vim.lsp.buf.hover()<CR>", "Підказка"},
    },

    t = {
        name = "Файлове дерево",
        tt = {":NvimTreeToggle<CR>", "Перемкнути"},
        f = {":NvimTreeFocus<CR>", "Фокус"},
    },

    n = {
        name = "Список TODO",
        l = {":TodoTelescope<CR>", "Відкрити список"},
    },

    s = {":Ruff<CR>", "Термінал"},
    r = {"Ruff"},

    c = {
        name = "Кольорові схеми",
        s = {":Telescope colorscheme<CR>", "Вибір теми"},
    }

}, {prefix = "<leader>"})
