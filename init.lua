require("core.lazy")
require("core.options")
require("core.keymaps")
require("core.colorscheme")

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
