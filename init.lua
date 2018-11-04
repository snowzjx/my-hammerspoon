excludes = {}
apps = {["WeChat"] = true}
function applicationWatcher(appName, eventType, appObject)
	if (eventType == hs.application.watcher.activated) then
		if (excludes[appName]) then return end
		if (apps[appName]) then
			hs.keycodes.setLayout("Pinyin")
			hs.keycodes.setMethod("Pinyin - Simplified")
		else
			hs.keycodes.setLayout("ABC")
		end
	end
end
appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()
