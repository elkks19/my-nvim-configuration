return {
    'nvim-neo-tree/neo-tree.nvim',
	keys = {
		{ "<leader>e", "<cmd>Neotree left toggle<cr>", desc = "Toggle file explorer" }
	},
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
        '3rd/image.nvim'
    },
    opts = {
        window = {
			width = 30,
            mappings = {
                ["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true }},
				["O"] = "system_open"
            },
        },
		commands = {
			system_open = function(state)
				local node = state.tree:get_node()
				local path = node:get_id()
				-- macOs: open file in default application in the background.
				vim.fn.jobstart({ "xdg-open", "-g", path }, { detach = true })
				-- Linux: open file in default application
				vim.fn.jobstart({ "xdg-open", path }, { detach = true })

				-- Windows: Without removing the file from the path, it opens in code.exe instead of explorer.exe
				local p
				local lastSlashIndex = path:match("^.+()\\[^\\]*$") -- Match the last slash and everything before it
				if lastSlashIndex then
					p = path:sub(1, lastSlashIndex - 1) -- Extract substring before the last slash
				else
					p = path -- If no slash found, return original path
				end
  				vim.cmd("silent !start explorer " .. p)
			end
		},
        close_if_last_window = true,
  		auto_clean_after_session_restore = true,
		filesystem = {
			filtered_items = {
				visible = false,
				hide_dotfiles = false,
            	hide_gitignored = true,
				hide_by_name = {
					"node_modules",
				},
				hide_by_pattern = {
					'*/*_templ.go',
					'*/*_templ.txt',
				},
				always_show = {
				  	".gitignored",
				},
				always_show_by_pattern = {
					".env*",
				},
          	},
		},
    },
}
