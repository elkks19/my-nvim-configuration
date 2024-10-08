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
                ["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true }}
            },
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
					'*/.*_templ.go',
					'*/.*_templ.txt',
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

