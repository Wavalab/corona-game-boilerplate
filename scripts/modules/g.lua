local G = {}

-- NICE GLOBAL VARIABLES
---------------------------------------------------------------------
G.platform = system.getInfo("platform") -- android/ios/macos/tvos/win32/winphone

-- Virtual width/height (letterbox area 780 x 1200)
G.vw = display.contentWidth
G.vh = display.contentHeight

-- Screen width/height (letterbox area + black bars)
G.sw = display.actualContentWidth
G.sh = display.actualContentHeight

G.xm = display.contentCenterX
G.ym = display.contentCenterY
G.l = (G.sw - G.vw) * -.5 -- Coordinate for left edge
G.r = (G.vw - G.l)        -- ... right edge
G.t = (G.sh - G.vh) * -.5 -- ... top edge
G.b = (G.vh - G.t)        -- ... bottom edge



-- HELPER FUNCTIONS
---------------------------------------------------------------------
G.dist = function(x1, y1, x2, y2)
  local dx, dy = x2 - x1, y2 - y1
  return math.sqrt(dx*dx + dy*dy)
end

G.sqdist = function(x1, y1, x2, y2)
  local dx, dy = x2 - x1, y2 - y1
  return dx*dx + dy*dy -- faster for comparisons only
end



-- GLOBAL SETTINGS
---------------------------------------------------------------------
G.settings = {}
G.settings.soundOn = true



-- GLOBAL DATA
---------------------------------------------------------------------
G.data = {}
G.data.highscore = 0



-- GLOBAL SOUNDS
---------------------------------------------------------------------
G.sounds = {} -- not unloaded at scene exit
-- G.sounds.sfx1 = audio.loadSound("sounds/sfx1.wav")

return G
