local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
   return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#DE7E00 ]])

nvimtree.setup({
   renderer = {
      icons = {
         glyphs = {
            folder = {
               arrow_closed = "⊞",
               arrow_open = "⊟",
            },
         },
      },
   },
   actions = {
      open_file = {
         window_picker = {
            enable = false,
         },
      },
   },
   filters = {
	   enable = true,
	   dotfiles = false,
	   -- THIS LINE EXCLUDES ALL THE FILES GENERATED FROM TEMPL GENERATE COMMAND
	   custom = { '/.*_templ.go', '/.*_templ.txt' },
	   exclude = {},
   },
   git = {
	   enable = true,
	   ignore = false,
	   timeout = 500,
   },
})


