vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>r", ":registers<CR>")

keymap.set("i", "jk", "<esc>")
keymap.set("n", "<leader>c", ":nohl<CR>")
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>- ", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>si", "<C-w>=")
keymap.set("n", "<leader>sc", ":close<CR>")

keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tc", ":tabclose<CR>")
keymap.set("n", "<leader>ne", ":tabn<CR>")
keymap.set("n", "<leader>an", ":tabp<CR>")

keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>")

keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
keymap.set("n", "<leader>fe", "<cmd>Telescope emoji<cr>")
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>")

keymap.set("n", "<A-1>", "1gt")
keymap.set("n", "<A-2>", "2gt")
keymap.set("n", "<A-3>", "3gt")
keymap.set("n", "<A-4>", "4gt")
keymap.set("n", "<A-5>", "5gt")
keymap.set("n", "<A-6>", "6gt")
keymap.set("n", "<A-7>", "7gt")
keymap.set("n", "<A-8>", "8gt")
keymap.set("n", "<A-9>", "9gt")
keymap.set("n", "<A-0>", "0gt")

keymap.set("n", "<leader>tt", ":ToggleTerm size=75 direction=vertical<CR>")
keymap.set("t", "<esc>", "<C-\\><C-n> :close<CR>")

-- GUARDAR CON CTRL+S
keymap.set("n", "<C-s>", "<cmd>w<CR>")
keymap.set("i", "<C-s>", "<cmd>w<CR>")
keymap.set("v", "<C-s>", "<cmd>w<CR>")

-- BORRAR LA PALABRA A LA IZQUIERDA DEL CURSOR CON CTRL+BACKSPACE
keymap.set("i", "<C-BS>", "<C-w>")
-- BORRAR LA PALABRA A LA IZQUIERDA DEL CURSOR CON CTRL+BACKSPACE EN LA TERMINAL DE GNOME
keymap.set("i", "<C-H>", "<C-W>")

-- Toggle Twilight
keymap.set("n", "<leader>td", ":Twilight<CR>")

-- Toggle Markdown Preview
keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<CR>")

-- INICIAR O TERMINAR LIVE SERVER EN EL PWD DE LA TERMINAL
keymap.set("n", "<leader>ls", ":LiveServerToggle<CR>")

-- CAMBIAR EL TAMAÑO DE LA VENTANA USANDO ALT + VIM MOTIONS
keymap.set("n", "<A-l>", "<C-w><")
keymap.set("n", "<A-h>", "<C-w>>")
keymap.set("n", "<A-k>", "<C-w>+")
keymap.set("n", "<A-j>", "<C-w>-")

vim.keymap.set("n", "<leader>nt", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "<leader>pt", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })


