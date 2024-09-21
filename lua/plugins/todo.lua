return {
	"folke/todo-comments.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim" 
	},
	opts = {
		keywords = {
			TODO = { color = "#5B9A8B" },
			FIX = {color = "#FD8D14" },
			WARNING = { color = "#F24C3D" },
			HACK ={ color = "#F24C3D" },
			NOTE = { color = "#F3AA60" },
		},
	}
}
