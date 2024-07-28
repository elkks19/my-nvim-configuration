vim.o.background = "dark"


-- MOONBOW
-- local status, colorscheme = pcall(vim.cmd, "colorscheme moonbow")
--  if not status then
--    print("no se encontró moonbow")
--    return
-- end


-- PALENIGHT
-- local status, colorscheme = pcall(vim.cmd, "colorscheme palenight")
--
-- if not status then
-- 	print("no se encontró palenight")
-- 	return
-- end


-- GRUVBOX
local status, colorscheme = pcall(vim.cmd, "colorscheme gruvbox")

if not status then
	print("no se encontró gruvbox")
	return
end
