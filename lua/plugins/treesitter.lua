
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
	"bash",
	"css",
	"dockerfile",
	"html",
	"javascript",
	"json",
	"json5",
	"lua",
	"python",
	"vim",
	"yaml",
	"c",
	"go",
	"rust",
    "php",
	},

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
  },
}
