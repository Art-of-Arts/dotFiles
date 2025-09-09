local function is_image_file(path)
	local ext = path:match("%.([^%.]+)$")
	if not ext then
		return false
	end
	ext = ext:lower()
	local image_extensions = {
		jpg = true, jpeg = true, png = true, gif = true, bmp = true,
		tiff = true, tif = true, webp = true, svg = true, ico = true,
		heic = true, heif = true, raw = true, cr2 = true, nef = true,
		arw = true, dng = true, orf = true, rw2 = true
	}
	return image_extensions[ext] or false
end

local selected_or_hovered = ya.sync(function()
	local tab, paths = cx.active, {}
	for _, u in pairs(tab.selected) do
		local path = tostring(u)
		if is_image_file(path) then
			paths[#paths + 1] = path
		end
	end
	if #paths == 0 and tab.current.hovered then
		local path = tostring(tab.current.hovered.url)
		if is_image_file(path) then
			paths[1] = path
		end
	end
	return paths
end)

return {
	entry = function()
		ya.mgr_emit("escape", { visual = true }) -- Deselects if in visual mode

		local urls = selected_or_hovered()
		if #urls == 0 then
			return ya.notify({
				title = "Rotate image",
				content = "No image file selected or hovered.",
				level = "warn",
				timeout = 5,
			})
		end

		for _, file_path in ipairs(urls) do
			-- Construct the magick command for in-place rotation
			-- The syntax is typically: magick input_file -rotate angle output_file
			-- For in-place, input_file and output_file are the same.
			local status, err = Command("magick")
				:arg(file_path)
				:arg("-rotate") -- Note: it's -rotate, not --rotate
				:arg("90") -- Angle
				:arg(file_path) -- Output path (same as input for in-place)
				:spawn()
				:wait()

			if not status or not status.success then
				ya.notify({
					title = "Rotate image",
					content = string.format("Failed : %s", status and status.code or err),
					level = "error",
					timeout = 5,
				})
			end
		end

		-- Refresh the current pane to show the rotated image
		ya.mgr_emit("refresh", { targets = "current" })
	end,
}
