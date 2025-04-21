
-- Налаштування мовних серверів
local lspconfig = require('lspconfig')

-- Python (pyright)
lspconfig.pyright.setup {
	settings = {
	    pyright = {
	      disableOrganizeImports = true, -- Використовуємо Ruff для організації імпортів
	    },
	    python = {
	      analysis = {
	        ignore = { '*' }, -- Ігноруємо всі файли — лише Ruff відповідає за linting
	        },
		},
	},
}

-- TypeScript (ts_ls)
lspconfig.ts_ls.setup({})

-- Rust
lspconfig.rust_analyzer.setup {
  settings = {
    ['rust-analyzer'] = {},
  },
}

-- PHP (Intelephense)
lspconfig.intelephense.setup({
    capabilities = capabilities,
    settings = {
        intelephense = {
            stubs = {
                'php',
                'symfony',
                'wordpress',
                'buddypress',
                'woocommerce',
                'laravel',
                'zend',
            },
            environment = {
                phpVersion = '8.4',
            },
            format = {
                enable = true,
            },
        },
    },
})

-- Python Linter (Ruff)
lspconfig.ruff.setup {
  init_options = {
    settings = {
      args = {
		"--select=E,F,UP,N,I,ASYNC,S,PTH",
		"--line-length=79",
		"--respect-gitignore",
      	"--target-version=py311",
      },
    }
  }
}

-- Глобальні мапінги для діагностики
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

-- Прив'язка клавіш після підключення LSP до буфера
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'lD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'ld', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'lk', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'i', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>r', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
