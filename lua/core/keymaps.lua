local keymap = vim.keymap

keymap.set("i", "jk", "<esc>")
keymap.set("n", "<leader>cl", ":nohl<CR>")

-- keymap.set("n", "<leader>+", "<C-a>")
-- keymap.set("n", "<leader>- ", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>si", "<C-w>=")
keymap.set("n", "<leader>sc", ":close<CR>")

-- OPEN A NEW TAB
keymap.set("n", "<leader>to", "<CMD>tabnew<CR>")
keymap.set({ "n", "i" } , "<A-t>", "<CMD>tabnew<CR>")

-- CLOSE A TAB
keymap.set("n", "<leader>tc", "<CMD>tabclose<CR>")
keymap.set({ "n", "i" }, "<A-w>", "<CMD>tabclose<CR>")

-- MOVE BETWEEN TABS USING ALT AND DOT OR COMMA
keymap.set({ "n", "v", "i" }, "<A-.>", ":tabn<CR>")
keymap.set({ "n", "v", "i" }, "<A-,>", ":tabp<CR>")

-- MOVE TABS TO THE RIGHT OR LEFT POSITION
keymap.set("n", "<A-S-,>", ":-tabmove<cr>")
keymap.set("n", "<A-S-.>", ":+tabmove<cr>")


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


-- GUARDAR CON CTRL+S
keymap.set({"n", "i", "v"}, "<C-s>", "<cmd>w<CR>")

-- BORRAR LA PALABRA A LA IZQUIERDA DEL CURSOR CON CTRL+BACKSPACE
keymap.set("i", "<C-BS>", "<C-w>")
-- BORRAR LA PALABRA A LA IZQUIERDA DEL CURSOR CON CTRL+BACKSPACE EN LA TERMINAL DE GNOME
keymap.set("i", "<C-H>", "<C-W>")

-- CAMBIAR EL TAMAÑO DE LA VENTANA USANDO ALT + VIM MOTIONS
keymap.set("n", "<A-l>", "<Plug>ResizeWindowRight")
keymap.set("n", "<A-h>", "<Plug>ResizeWindowLeft")
keymap.set("n", "<A-k>", "<Plug>ResizeWindowUp")
keymap.set("n", "<A-j>", "<Plug>ResizeWindowDown")
-- CAMBIAR EL TAMAÑO DE LA VENTANA A MAS VELOCIDAD HACIENDO USO DE ALT + SHIFT + VIM MOTIONS
keymap.set("n", "<A-L>", "5<Plug>ResizeWindowRight")
keymap.set("n", "<A-H>", "5<Plug>ResizeWindowLeft")
keymap.set("n", "<A-K>", "5<Plug>ResizeWindowUp")
keymap.set("n", "<A-J>", "5<Plug>ResizeWindowDown")


-- MOVER LA LINEA ABAJO O ARRIBA USANDO ESPACIO Y j o k
-- USANDO CONTROL + ALT Y j o k (que considero es mas comodo)
keymap.set("n", "<C-M-k>", ":m .-2<CR>==")
keymap.set("n", "<C-M-j>", ":m .+1<CR>==")
-- MOVER LA SELECCION DE LINEAS ABAJO O ARRIBA USANDO CONTROL + ALT Y j o k
keymap.set("v", "<C-M-k>", ":m '<-2<CR>gv=gv") -- move selected lines down(v)
keymap.set("v", "<C-M-j>", ":m '>+1<CR>gv=gv") -- move selected lines up(v)

-- MOVE A WINDOW TO A NEW TAB
keymap.set("n", "<C-M-t>", "<C-w>T")

-- INFO: move a window to a new location
keymap.set("n", "<leader>mw", ":call WindowSwap#EasyWindowSwap()<CR>")


vim.keymap.set("n", "<leader>nt", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "<leader>pt", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })


