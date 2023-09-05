local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

treesitter.setup({
    highlight = {
        enable = true,
    },
    indent = { enable = false,},
	autotag = { 
		enable = true,
		filetypes = { "html", "xml", "vue", "php" },
	},
    ensure_installed = {
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
		"javascript",
		"css",
		"gitignore",
		"glsl",
		"todotxt",
    },
	autoinstall = true,
})
