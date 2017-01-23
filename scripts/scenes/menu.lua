--
-- Scene Template
--

local composer = require("composer")
local G = require("scripts.modules.g")
-- require statements here



--
-- Variables, init, etc; Executes ONCE
--

local scene = composer.newScene() -- create the scene
-- ...



--
-- Runs at EVERY scene creation before visible
--

function scene:create(event)
  local sceneGroup = self.view

  -- define groups
  -- pause physics if started
  -- define display objects
  -- insert objects/groups into scene view
  -- load scene specific audio
  -- touch handlers
  -- ...
end



--
-- Runs before & after screen shows
--

function scene:show(event)
  local sceneGroup, phase = self.view, event.phase

  if (phase == "will") then
    -- position elements
    -- ...

  elseif (phase == "did") then
    -- timers, transitions, animations
    -- start physics
    -- play scene specific audio
    -- Runtime event listeners (enterFrame, etc)
    -- ...
  end
end



--
-- Runs before & after screen hides
--

function scene:hide(event)
  local sceneGroup, phase = self.view, event.phase

  if (phase == "will") then
    -- remove native UI objects
    -- remove Runtime listeners (enterFrame, etc)
    -- pause physics
    -- stop audio
    -- stop timers
    -- ...

  elseif (phase == "did") then
    -- optional: force screen removal
    -- ...
  end
end



--
-- Runs directly before scene removal
--

function scene:destroy(event)
  local sceneGroup = self.view

  -- destroy scene specific audio
  -- ...
end



--
-- End
--

scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)
return scene
