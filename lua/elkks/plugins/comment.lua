local setup, comment = pcall(require, "Comment")
-- COMMENTS THAT WORK ON TEMPL FILES
local ts_setup, ts_context = pcall(require, "ts_context_commentstring.integrations.comment_nvim")

if not setup then
   return
end

if not ts_setup then
   return
end

comment.setup({
	pre_hook = ts_context.create_pre_hook(),
})


ts_setup, ts_context = pcall(require, "ts_context_commentstring")

ts_context.setup({
    enable_autocmd = false,
    languages = {
        templ = {
            __default = '// %s',
            component_declaration = '<!-- %s -->',
        }
    }
})

