local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = { enable = false,},
	ensure_installed = {
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
	},
})
