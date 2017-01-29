local composer = require("composer")
local G = require("scripts.modules.g")



local scene = composer.newScene()
local splash



function scene:create(event)
  local sceneGroup = self.view
  -- Create splash screen object
  splash = display.newImageRect("images/splash.png", 900, 1425)
  sceneGroup:insert(splash)
end



function scene:show(event)
  local sceneGroup = self.view
  local phase = event.phase
  if (phase == "will") then
    -- Position splash screen
    splash.x = G.xMid
    splash.y = G.yMid
  elseif (phase == "did") then
    -- Go to game scene after 3s
    timer.performWithDelay(3000, function()
    	composer.gotoScene("scripts.scenes.menu")
    end)
  end
end



function scene:hide(event)
  local sceneGroup = self.view
  local phase = event.phase
  if (phase == "will") then
  elseif (phase == "did") then
    -- Fully unload the splash scene and do not recycle
    composer.removeScene("scripts.scenes.splash", false)
  end
end



function scene:destroy(event)end



scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)
return scene
