local setup , todo= pcall(require, "todo-comments")

if not setup then
   return
end

todo.setup({
	keywords = {
		TODO = { color = "#5B9A8B" },
		FIX = {color = "#FD8D14" },
		WARNING = { color = "#F24C3D" },
		HACK ={ color = "#F24C3D" },
		NOTE = { color = "#F3AA60" },
	},
})
