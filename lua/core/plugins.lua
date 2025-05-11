
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	-- Підсвітка синтаксису через дерева розбору
    { 'nvim-treesitter/nvim-treesitter' },

    -- Налаштування LSP-сереверів
	{ 'neovim/nvim-lspconfig' },

	-- Автодоповнення
	{
        'hrsh7th/cmp-nvim-lsp',
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            require('lspconfig')['ts_ls'].setup { capabilities = capabilities }
        end
    },
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },
	{ 'hrsh7th/cmp-cmdline' },
	{ 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' }, -- Сніпети
	{ 'williamboman/mason.nvim' }, -- Установка LSP/форматерів/лінтерів

    -- Fuzzy finder (пошук файлів, grep тощо)
    {
		'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

    -- Стартова сторінка
	{
	  'nvimdev/dashboard-nvim',
	  event = 'VimEnter',
	  config = function()
            require('dashboard').setup {}
	  end,
	  dependencies = { 'nvim-tree/nvim-web-devicons' }
	},

    -- Анімація на основі клітинкового автомата
	{ 'Eandrju/cellular-automaton.nvim' },

    -- Підсвічування кольрів у коді (наприклад, hex-кольори)
	{ 'norcalli/nvim-colorizer.lua' },

    -- Нижній статусбар
	{
	    'nvim-lualine/lualine.nvim',
	    dependencies = { 'nvim-tree/nvim-web-devicons' }
	},

    -- TODO коментарі з пошуком через Telescope
	{
	  "folke/todo-comments.nvim",
	  dependencies = { "nvim-lua/plenary.nvim" },
      opts = {}
	},

    -- Теми
	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- Покращений escape
--	{
--	  "max397574/better-escape.nvim",
--	  config = function()
--  	    require("better_escape").setup({
--            keys = function()
--                vim.api.nvim_input("<Esc>")
--                local current_line = vim.api.nvim_get_current_line()
--                if current_line:match("^%s+j$") then
--                    vim.schedule(function()
--                        vim.api.nvim_set_current_line("")
--                    end)
--                end
--            end,
--            timeout = vim.o.timeoutlen,
--  	    })
--  	  end
--	},

    -- Коментування коду
	{
	    'numToStr/Comment.nvim',
	    opts = {},
	    lazy = false,
	},

    -- Вкладки буферів
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

    -- Файловий менеджер
	{
	  "nvim-tree/nvim-tree.lua",
	  version = "*",
	  lazy = false,
	  dependencies = { "nvim-tree/nvim-web-devicons" },
	  config = function()
	    require("nvim-tree").setup {}
	  end,
	},

    -- Статичний аналізатор коду (ALE)
	{
	    'dense-analysis/ale',
	    config = function()
	        vim.g.ale_linters = {
	        	python = {'mypy'},
	            lua = {'lua_language_server'}
	        }
	    end
	},

    -- Підсвітка слова під курсором в усіх буферах
	{ 'RRethy/vim-illuminate' },

    -- Плагін для luarocks 
	{
	    "vhyrro/luarocks.nvim",
	    priority = 1001,
	    opts = {
	        rocks = { "magick" },
	    },
	},

    -- Зручне відображення помилок
	{
	 "folke/trouble.nvim",
	 dependencies = { "nvim-tree/nvim-web-devicons" },
	 opts = {},
	},

    -- Вбудований термінал
	{'akinsho/toggleterm.nvim', version = "*", config = true},

    -- Підказки по комбінаціях клавіш
	{
	  "folke/which-key.nvim",
	  event = "VeryLazy",
	  init = function()
	    vim.o.timeout = true
	    vim.o.timeoutlen = 300
	  end,
	  opts = {}
	},

    -- Модулі min.nvim
	{ 'echasnovski/mini.nvim', version = false },
	{ 'echasnovski/mini.move', version = false },
	{ 'echasnovski/mini.pairs', version = false },

    {
        "folke/tokyonight.nvim",
        lazy=false,
        priority=1000,
        opts = {},
    },

})
