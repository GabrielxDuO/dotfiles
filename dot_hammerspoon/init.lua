-- 设置要切换的终端模拟器的 Bundle ID
-- local TERMINAL_BUNDLE_ID = "com.apple.Terminal"
-- local TERMINAL_BUNDLE_ID = "org.alacritty"
-- local TERMINAL_BUNDLE_ID = "com.github.wez.wezterm"
local TERMINAL_BUNDLE_ID = "net.kovidgoyal.kitty"

hs.hotkey.bind({ "option" }, "space", function()
	local terminalApp = hs.application.get(TERMINAL_BUNDLE_ID)

	if not terminalApp or not terminalApp:mainWindow() then
		hs.application.launchOrFocusByBundleID(TERMINAL_BUNDLE_ID)
	elseif terminalApp:isFrontmost() then
		terminalApp:hide()
	else
		terminalApp:activate()
	end
end)
