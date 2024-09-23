local keymap = vim.keymap

keymap.set("i", "jk", "<esc>", { desc = "return to normal mode", silent = true })
keymap.set("n", "<leader>cl", ":nohl<CR>", { desc = "clear highlights" })

-- keymap.set("n", "<leader>+", "<C-a>")
-- keymap.set("n", "<leader>- ", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })
keymap.set("n", "<leader>si", "<C-w>=", { desc = "balance windows" })
keymap.set("n", "<leader>sc", ":close<CR>", { desc = "close window" })

-- OPEN A NEW TAB
keymap.set("n", "<leader>to", "<CMD>tabnew<CR>", { desc = "open a new tab" })
keymap.set({ "n", "i" } , "<A-t>", "<CMD>tabnew<CR>", { desc = "open a new tab" })

-- CLOSE A TAB
keymap.set("n", "<leader>tc", "<CMD>tabclose<CR>", { desc = "close tab" })
keymap.set({ "n", "i" }, "<A-w>", "<CMD>tabclose<CR>", { desc = "close tab" })

-- MOVE BETWEEN TABS USING ALT AND DOT OR COMMA
keymap.set({ "n", "v", "i" }, "<A-.>", ":tabn<CR>", { desc = "move to the next tab" })
keymap.set({ "n", "v", "i" }, "<A-,>", ":tabp<CR>", { desc = "move to the next tab" })

-- MOVE TABS TO THE RIGHT OR LEFT POSITION
keymap.set("n", "<A-S-,>", ":-tabmove<cr>", { desc = "move tab to the left" })
keymap.set("n", "<A-S-.>", ":+tabmove<cr>", { desc = "move tab to the right" })


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
keymap.set({"n", "i", "v"}, "<C-s>", "<cmd>w<CR>", { desc = "save file" })

-- BORRAR LA PALABRA A LA IZQUIERDA DEL CURSOR CON CTRL+BACKSPACE
keymap.set("i", "<C-BS>", "<C-w>", { desc = "delete word to the left of the cursor" })
-- BORRAR LA PALABRA A LA IZQUIERDA DEL CURSOR CON CTRL+BACKSPACE EN LA TERMINAL DE GNOME
keymap.set("i", "<C-H>", "<C-W>", { desc = "delete word to the left of the cursor" })

-- CAMBIAR EL TAMAÑO DE LA VENTANA USANDO ALT + VIM MOTIONS
keymap.set("n", "<A-l>", "<Plug>ResizeWindowRight", { desc = "resize window right" })
keymap.set("n", "<A-h>", "<Plug>ResizeWindowLeft", { desc = "resize window left" })
keymap.set("n", "<A-k>", "<Plug>ResizeWindowUp", { desc = "resize window up" })
keymap.set("n", "<A-j>", "<Plug>ResizeWindowDown", { desc = "resize window down" })
-- CAMBIAR EL TAMAÑO DE LA VENTANA A MAS VELOCIDAD HACIENDO USO DE ALT + SHIFT + VIM MOTIONS
keymap.set("n", "<A-L>", "5<Plug>ResizeWindowRight", { desc = "resize window right faster" })
keymap.set("n", "<A-H>", "5<Plug>ResizeWindowLeft", { desc = "resize window left faster" })
keymap.set("n", "<A-K>", "5<Plug>ResizeWindowUp", { desc = "resize window up faster" })
keymap.set("n", "<A-J>", "5<Plug>ResizeWindowDown", { desc = "resize window down faster" })


-- MOVER LA LINEA ABAJO O ARRIBA USANDO ESPACIO Y j o k
-- USANDO CONTROL + ALT Y j o k (que considero es mas comodo)
keymap.set("n", "<C-M-k>", ":m .-2<CR>==", { desc = "move line up" })
keymap.set("n", "<C-M-j>", ":m .+1<CR>==", { desc = "move line down" })
-- MOVER LA SELECCION DE LINEAS ABAJO O ARRIBA USANDO CONTROL + ALT Y j o k
keymap.set("v", "<C-M-k>", ":m '<-2<CR>gv=gv", { desc = "move selected lines down(v)" })
keymap.set("v", "<C-M-j>", ":m '>+1<CR>gv=gv", { desc = "move selected lines up(v)" })

-- MOVE A WINDOW TO A NEW TAB
keymap.set("n", "<C-M-t>", "<C-w>T", { desc = "move window to a new tab" })

-- INFO: move a window to a new location
keymap.set("n", "<leader>mw", ":call WindowSwap#EasyWindowSwap()<CR>", { desc = "copy window so it swaps with another window (kinda)" })


vim.keymap.set("n", "<leader>nt", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "<leader>pt", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })


