default_width = 2560
default_height = 1440
default_scale = 2

civ6_width = 5120
civ6_height = 2880
civ6_scale = 1

main_screen = hs.screen.mainScreen()

function applicationWatcher(appName, eventType, appObject)
        if (eventType == hs.application.watcher.activated) then
                if (string.find(appName, "Civilization VI")) then
			main_screen:setMode(civ6_width, civ6_height, civ6_scale)
                else
			main_screen:setMode(default_width, default_height, default_scale)
                end
        end
end

appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()
