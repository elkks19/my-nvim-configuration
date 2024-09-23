return {
	-- AUTOTAG
	{
		'windwp/nvim-ts-autotag',
		opts = {
			opts = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = true,
			},
		}
	},
	-- TREESITTER
	{
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate",

		config = function()
			require('nvim-treesitter.configs').setup({
				highlight = {
					enable = true,
				},
				indent = {
					enable = false,
				},
				ensure_installed = {
					-- cosas de go
					"go",
					"gomod",
					"gosum",
					"gowork",
					"gotmpl",
					-- cosas de go
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
		end
	}
}
