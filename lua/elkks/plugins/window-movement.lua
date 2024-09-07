-- INFO: BASICALLY YOU CAN YANK A WINDOW AND PASTE IT IN ANOTHER WINDOW
local setup, WindowSwap = pcall(require, "vim-windowswap")

if not setup then
	return
end

vim.g.windowswap_map_keys = 0


-- INFO: move a window to a new location
keymap.set("n", "<silent> <leader>mw", ":call WindowSwap#EasyWindowSwap()<CR>")



-- INFO: THESE IS THE SETUP FOR winshift.nvim, that i don't quite like so im using
-- the plugin up above instead
--
-- local setup, windshift = pcall(require, "winshift")
--
-- if not setup then
--   return
-- end

-- winshift.setup({
--   highlight_moving_win = true,  -- Highlight the window being moved
--   focused_hl_group = "Visual",  -- The highlight group used for the moving window
--   moving_win_options = {
--     -- These are local options applied to the moving window while it's
--     -- being moved. They are unset when you leave Win-Move mode.
--     wrap = false,
--     cursorline = false,
--     cursorcolumn = false,
--     colorcolumn = "",
--   },
--   keymaps = {
--     disable_defaults = false, -- Disable the default keymaps
--     win_move_mode = {
--       ["h"] = "left",
--       ["j"] = "down",
--       ["k"] = "up",
--       ["l"] = "right",
--       ["H"] = "far_left",
--       ["J"] = "far_down",
--       ["K"] = "far_up",
--       ["L"] = "far_right",
--       ["<left>"] = "left",
--       ["<down>"] = "down",
--       ["<up>"] = "up",
--       ["<right>"] = "right",
--       ["<S-left>"] = "far_left",
--       ["<S-down>"] = "far_down",
--       ["<S-up>"] = "far_up",
--       ["<S-right>"] = "far_right",
--
--     },
--   },
--   ---A function that should prompt the user to select a window.
--   ---
--   ---The window picker is used to select a window while swapping windows with
--   ---`:WinShift swap`.
--   ---@return integer? winid # Either the selected window ID, or `nil` to
--   ---   indicate that the user cancelled / gave an invalid selection.
--   window_picker = function()
--     return require("winshift.lib").pick_window({
--       -- A string of chars used as identifiers by the window picker.
--       picker_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
--       filter_rules = {
--         -- This table allows you to indicate to the window picker that a window
--         -- should be ignored if its buffer matches any of the following criteria.
--         cur_win = true, -- Filter out the current window
--         floats = true,  -- Filter out floating windows
--         filetype = {},  -- List of ignored file types
--         buftype = {},   -- List of ignored buftypes
--         bufname = {},   -- List of vim regex patterns matching ignored buffer names
--       },
--       ---A function used to filter the list of selectable windows.
--       ---@param winids integer[] # The list of selectable window IDs.
--       ---@return integer[] filtered # The filtered list of window IDs.
--       filter_func = nil,
--     })
--   end,
-- }

-- vim.keymap.map("n", "<C-W><C-M>", "<Cmd>WinShift<CR>")
-- nnoremap <C-W><C-M> <Cmd>WinShift<CR>
-- nnoremap <C-W>m <Cmd>WinShift<CR>
-- nnoremap <C-W>X <Cmd>WinShift swap<CR>
--
-- " If you don't want to use Win-Move mode you can create mappings for calling the
-- " move commands directly:
-- nnoremap <C-M-H> <Cmd>WinShift left<CR>
-- nnoremap <C-M-J> <Cmd>WinShift down<CR>
-- nnoremap <C-M-K> <Cmd>WinShift up<CR>
-- nnoremap <C-M-L> <Cmd>WinShift right<CR>)
