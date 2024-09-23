local user_bookmarks = vim.g.startup_bookmarks
local bookmark_texts = { "Bookmarks", "" }
local user_bookmark_mappings = {}

if not user_bookmarks then
    user_bookmarks = {}
    bookmark_texts = {}
end

for key, file in pairs(user_bookmarks) do
    bookmark_texts[#bookmark_texts + 1] = key .. " " .. file
end

for key, file in pairs(user_bookmarks) do
    user_bookmark_mappings[key] = "<cmd>e " .. file .. "<CR>"
end

return {
	type = "text",
	oldfiles_directory = false,
	align = "center",
	fold_section = false,
	title = "Bookmarks",
	margin = 5,
	content = bookmark_texts,
	highlight = "String",
	default_color = 0,
	oldfiles_amount = 0,
	user_bookmark_mappings = user_bookmark_mappings
}
