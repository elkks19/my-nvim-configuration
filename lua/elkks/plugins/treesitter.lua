local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- CONFIGURE BLADE PARSER
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = {"src/parser.c"},
    branch = "main",
  },
  filetype = "blade"
}


treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = { enable = false,},
	ensure_installed = {
		-- COSAS DE GO
		"go",
		"gomod",
		"gosum",
		"gowork",
		"gotmpl",
		-- COSAS DE GO
		"arduino",
		"sql",
		"make",
		"cmake",
		"bash",
		"nasm",
		"c_sharp",
		"php",
		"javascript",
		"c",
		"java",
		"cpp",
		"latex",
		"python",
		"json",
		"tsx",
		"html",
		"typescript",
		"templ",
		"tsx",
		"lua",
		"json",
		"javascript",
		"css",
		"gitignore",
		"glsl",
		"todotxt",
		"vue",
		"printf",
		"markdown",
		"markdown_inline",
		"http",
		"gitignore",
	},
	autoinstall = true,
})

-- AUTOTAG
local status, autotag = pcall(require, "nvim-ts-autotag")
if not status then
	return
end

autotag.setup({
	opts = {
		enable_close = true,
		enable_rename = true,
		enable_close_on_slash = true,
	},
})
