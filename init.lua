require("core.lazy")
require("core.options")
require("core.keymaps")
require("core.colorscheme")

-- INFO: spawn 5 ducks
require("duck").hatch()
require("duck").hatch()
require("duck").hatch()
require("duck").hatch()
require("duck").hatch()

vim.api.nvim_set_hl(0, "Function", {ctermbg = 0, fg = "#ffaf38" })
vim.api.nvim_set_hl(0, "Type", {ctermbg = 0, fg = "#f70233" })
vim.cmd(':hi Normal guibg=none ctermbg=none')

vim.g.c_syntax_for_h = 1

vim.filetype.add({
    extension = {
        templ = "templ",
    },
})

vim.g.windowswap_map_keys = 0

-- plugin that lets me edit sudo accesible files
vim.g.suda_smart_edit = 1

vim.g.startup_bookmarks = {
	["."] = '~/.config/nvim/init.lua',
	["I"] = '/share/Unifranz/PROYECTO_INTEGRADOR/PROYECTO/cmd/main.go',
	["A"] = '/share/Proyectos/PERSONALES/Alianza/cmd/main.go',
	["M"] = '/share/Unifranz/Semestre 5/Sistemas moviles/PROYECTO_FINAL/',
	["V"] = '/share/Vida/Proyecto/',
}

local autocmd = vim.api.nvim_create_autocmd
autocmd("VimLeavePre", {
  command = ":Neotree close",
})

