-- Stuff here runs only once
-- Setup dependencies, vars, constants, etc
local composer = require("composer")
local scene = composer.newScene()



-- Runs at every scene creation before visible
function scene:create(event)
  local sceneGroup = self.view
  -- pause physics
  -- define groups
  -- define display objects
  -- insert objects/groups into scene view
  -- load scene specific audio
  -- touch handlers
end



-- Runs before & after screen shows
function scene:show(event)
  local sceneGroup, phase = self.view, event.phase
  if (phase == "will") then
    -- position elements
  elseif (phase == "did") then
    -- timers, transitions, animations
    -- start physics
    -- play scene specific audio
    -- runtime event listeners
  end
end



-- Runs before & after screen hides
function scene:hide(event)
  local sceneGroup, phase = self.view, event.phase
  if (phase == "will") then
    -- remove native UI objects
    -- remove runtime listeners
    -- pause physics
    -- stop audio, timers, transitions, animations
  elseif (phase == "did") then
    -- composer.removeScene("scene1") -- force screen removal?
  end
end



-- Runs directly before scene removal
function scene:destroy(event)
  local sceneGroup = self.view
  -- destroy scene specific audio
end



scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)
return scene
