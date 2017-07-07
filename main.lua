local composer = require("composer")
local G = require("scripts.modules.g")

math.randomseed(os.time()) -- Seed random

-- Hide UI
display.setStatusBar(display.HiddenStatusBar)
if G.platform == "android" then
  native.setProperty("androidSystemUiVisibility", "immersiveSticky")
end

-- Load Saved Data into Globals

-- Initialize Ads/In App Purchases

-- System Events
Runtime:addEventListener("system", function(event)
  local type = event.type
  if type == "applicationStart" then
    composer.gotoScene("scripts.scenes.splash") -- goto splashscreen
  elseif type == "applicationResume" then
    if G.platform == "android" then
      native.setProperty("androidSystemUiVisibility", "immersiveSticky") -- hide UI on app re-entry
    end
  elseif type == "applicationExit" then
    -- Save app data, etc (No critical code here. This event doesn't always fire!)
  end
end)
