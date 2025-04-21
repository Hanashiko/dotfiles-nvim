
local wk = require("which-key")

wk.register({
	f = {
		name = "Find",
		f = {"Find File", ":Telescope find_files<CR>"},
		t = {"Find Text", ":Telescope live_grep<CR>"},
		b = {"Find Buffer", ":Telescope buffers<CR>"},
		h = {"Find Help", ":Telescope help_tags<CR>"},
	},

	g = {
		name = "Git",
		b = {"Open Branches", ":Telescope git_branches<CR>"},
		c = {"Open Commits", ":Telescope git_commits<CR>"},
		s = {"Open Status", ":Telescope git_status<CR>"},
	},

    e = {"Open Diagnostic Window", ":lua vim.diagnostic.open_float()<CR>"},

    l = {
        name = "LSP",
        D = {"Declaration", ":lua vim.lsp.bud.declaration()<CR>"},
        d = {"Definition", ":lua vim.lsp.buf.definition()<CR>"},
        k = {"Hover", ":lua vim.lsp.buf.hover()<CR>"},
    },

    t = {
        name = "NvimTree",
        tt = {"Tree Toggle", ":NvimTreeToggle<CR>"},
        f = {"Tree Focus", ":NvimTreeFocus<CR>"},
    },

    n = {
        name = "TodoList",
        l = {"Open List", ":TodoTelescope<CR>"},
    },

    s = {"Open Terminal", ":Ruff<CR>"},

    r = {"Ruff"},

    c = {
        name = "Color Schemes",
        s = {"Open Colorscheme Picker", ":Telescope colorscheme<CR>"},
    }

}, {prefix = "<leader>"})
