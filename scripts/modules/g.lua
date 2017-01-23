local G = {}



--
-- Convenient Globals
--

-- Device platform: "android", "ios", "macos", "tvos", "win32", or "winphone"
G.platform = system.getInfo("platform")

-- Width/Height of the "fake" letterbox area (800 x 1200)
G.fW = display.contentWidth
G.fH  = display.contentHeight

-- Full Width/Height of the "real" screen: letterbox area + the black bars
G.rW = display.actualContentWidth
G.rH  = display.actualContentHeight

-- positioning coordinates
G.xMid = display.contentCenterX
G.yMid = display.contentCenterY
G.lEdge = (G.rW - G.fW) * -.5
G.rEdge = G.fW - G.lEdge
G.tEdge = (G.rH - G.fH) * -.5
G.bEdge = G.fH - G.tEdge



--
-- Global Settings
--

G.settings = {}
-- G.settings.soundOn = true



--
-- Global Data
--

G.data = {}
-- G.data.highscore = 0



--
-- Global Sounds (not unloaded at scene exit)
--
G.sounds = {}
-- G.sounds.explosion = audio.loadSound("sounds/sfx/explosion.wav")



return G
