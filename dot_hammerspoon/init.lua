-- opt + space 切换终端
-- "com.apple.Terminal"
-- "org.alacritty"
-- "com.github.wez.wezterm"
-- "com.mitchellh.ghostty"
local TERMINAL_BUNDLE_ID = "net.kovidgoyal.kitty"

hs.hotkey.bind({ "option" }, "space", function()
	local app = hs.application.get(TERMINAL_BUNDLE_ID)
	if not app or not app:mainWindow() then
		hs.application.launchOrFocusByBundleID(TERMINAL_BUNDLE_ID)
	elseif app:isFrontmost() then
		app:hide()
	else
		app:activate()
	end
end)
