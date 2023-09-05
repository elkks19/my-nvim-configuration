local setup, viewer = pcall(require, "hologram")

if not setup then
  return
end

viewer.setup{
	auto_display = true,
}
