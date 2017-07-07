local composer = require("composer")
local G = require("scripts.modules.g")

local scene = composer.newScene()
local splash

function scene:create(event)
  local sceneGroup = self.view
  splash = display.newImageRect("images/splash.png", 900, 1425)
  sceneGroup:insert(splash)
end

function scene:show(event)
  local sceneGroup = self.view
  local phase = event.phase
  if (phase == "will") then
    splash.x = G.xm
    splash.y = G.ym
  elseif (phase == "did") then
    -- TODO: temporarily shortened for development
    -- TODO: temporarily pointed at game scene instead
    timer.performWithDelay(0, function()
    	composer.gotoScene("scripts.scenes.game") -- goto menu scene after 3s
    end)
  end
end

function scene:hide(event)
  local sceneGroup = self.view
  local phase = event.phase
  if (phase == "will") then
  elseif (phase == "did") then
    composer.removeScene("scripts.scenes.splash", false) -- fully unload scene no recycle
  end
end

function scene:destroy(event) end
scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)
return scene
