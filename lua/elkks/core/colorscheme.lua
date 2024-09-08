vim.o.background = "dark"

-- DEFAULT COLORSCHEME
local default = "gruvbox"

local status, colorscheme = pcall(vim.cmd, "colorscheme " .. default)
if not status then
	print("Error: " .. colorscheme .. " not found")
	return
end

--[[ INFO: AVAILABLE COLORSCHEMES
	 			KANAGAWA
				 MIASMA
				 MELANGE
				 GRUVBOX MATERIAL
				 DARKEARTH
				 PALENIGHT
				 CARBON
				 GRUVBOX
				 CATPPUCCIN 
]]

local status, colorscheme = pcall(vim.cmd, "colorscheme")

if not status then
	return
end

if colorscheme == "gruvbox" then
	vim.g.gruvbox_material_background = "hard"
	vim.g.gruvbox_material_transparent_background = 0
	vim.g.gruvbox_material_ui_contrast = "high"
	vim.g.gruvbox_material_float_style = "bright"
	vim.g.gruvbox_material_statusline_style = "material"
	vim.g.gruvbox_material_cursor = "auto"
	vim.g.gruvbox_material_better_performance = 1
	vim.g.gruvbox_material_colors_override = { bg0 = "#121212" }
	vim.g.gruvbox_material_transparent_background = 0
	vim.g.gruvbox_material_foreground = "mix"
	vim.g.gruvbox_material_background = "hard" -- soft, medium, hard
	vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
	vim.g.gruvbox_material_float_style = "bright" -- Background of floating windows
	vim.g.gruvbox_material_statusline_style = "material"
	vim.g.gruvbox_material_cursor = "auto"
	vim.g.gruvbox_material_colors_override = { bg0 = '#000000' } -- #0e1010
	vim.g.gruvbox_material_colors_override = { bg0 = "#121212" }
	vim.g.gruvbox_material_better_performance = 1
end
