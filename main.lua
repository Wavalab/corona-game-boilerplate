local composer = require("composer")
local G = require("scripts.modules.g")



--
-- Hide UI, Set Random Seed
--

display.setStatusBar(display.HiddenStatusBar)
if G.platform == "android" then
  native.setProperty("androidSystemUiVisibility", "immersiveSticky")
end
math.randomseed(os.time())



--
-- Load Saved Data, Setup Globals
--



--
-- Initialize Ads, In App Purchases
--



--
-- Android Key Events
--

if G.platform == "android" or G.platform == "winphone" then
  Runtime:addEventListener("key", function(event)
    local phase, keyName = event.phase, event.keyName
    if "back" == keyName and phase == "up" then
      -- Allow back key to navigate to app menu screen
      -- if composer.getCurrentSceneName() == "menu" then
      --   native.requestExit()
      -- else
      --   composer.gotoScene("scripts.scenes.menu", { effect="crossFade", time=500 })
      -- end
      return true
    end
    return false -- Tells OS that we aren't overriding normal behavior!
  end)
end



--
-- System Events
--

Runtime:addEventListener("system", function(event)
  local type = event.type
  if type == "applicationStart" then
    -- Go to splashscreen
    -- composer.gotoScene("scripts.scenes.splash")
  elseif type == "applicationResume" then
    if G.platform == "android" then
      -- Hide Android UI on app re-entry
      native.setProperty("androidSystemUiVisibility", "immersiveSticky")
    end
  elseif type == "applicationExit" then
    -- Save app data, etc
    -- No critical code here. This event doesn't always fire!
  end
end)
