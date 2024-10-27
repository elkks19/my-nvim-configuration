return {
	'nvim-lualine/lualine.nvim',
	config = function()
		local lualine = require("lualine")
		local custom_gruvbox = require("lualine.themes.gruvbox_dark")

		local colores = {
		   normal = "#F34434",
		   insert = "#F8881F",
		   negro = "#000000",
		   visual = "#2FA6B3",
		   command = "#B9C85C"
		}

		custom_gruvbox.normal.a.bg = colores.normal
		custom_gruvbox.insert = {
		   a = {
			  gui = "bold",
			  bg = colores.insert,
			  fg = colores.negro,
		   },
		}
		custom_gruvbox.visual.a.bg = colores.visual
		custom_gruvbox.command = {
		   a = {
			  gui = "italic",
			  bg = colores.command,
			  fg = colores.negro,
		   },
		}
		local colorscheme = pcall(vim.cmd, "colorscheme")
		local custom_theme = "auto"

		if colorscheme == "gruvbox" then
			custom_theme = custom_gruvbox
		end

		lualine.setup({
			options = {
				theme = custom_theme
			},
			sections = {
				lualine_c = {
					function()
						return require('auto-session.lib').current_session_name(true)
					end
				}
			}
		})
	end
}
