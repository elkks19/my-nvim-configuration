return {
    'nvim-neo-tree/neo-tree.nvim',
	keys = {
		{ "<leader>e", "<cmd>Neotree left toggle<cr>", desc = "Neotree" }
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
            mappings = {
                ["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true }}
            },
        },
        close_if_last_window = true,
		filesystem = {
			filtered_items = {
				hide_dotfiles = true,
            	hide_gitignored = false,
				hide_by_name = {
					"node_modules",
				},
				hide_by_pattern = {
					'/.*_templ.go',
					'/.*_templ.txt',
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

