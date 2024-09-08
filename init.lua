require("elkks.plugins-setup")
require("elkks.core.options")
require("elkks.core.keymaps")
require("elkks.core.colorscheme")
require("elkks.plugins.comment")
require("elkks.plugins.nvim-tree")
require("elkks.plugins.lualine")
require("elkks.plugins.telescope")
require("elkks.plugins.nvim-cmp")
require("elkks.plugins.autopairs")
require("elkks.plugins.treesitter")
require("elkks.plugins.todo")
require("elkks.plugins.lsp")
require("elkks.plugins.cmp")
require("elkks.plugins.laravel")
require("elkks.plugins.twilight")
require("elkks.plugins.live-server")
require("elkks.plugins.image")
require("elkks.plugins.window-movement")
require("elkks.plugins.notify")
require("elkks.plugins.noice")

vim.api.nvim_set_hl(0, "Function", {ctermbg = 0, fg = "#ffaf38" })
vim.api.nvim_set_hl(0, "Type", {ctermbg = 0, fg = "#f70233" })
-- vim.cmd(':hi Normal guibg=none ctermbg=none')
vim.g.c_syntax_for_h = 1

vim.filetype.add({
    extension = {
        templ = "templ",
    },
})

