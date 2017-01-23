--
-- Utility Module
--

-- require modules here
local M = {}



--
-- Private variables
--

local foo



--
-- Private functions
--

local moo = function()
  print("I am a private function!")
end



--
-- Public functions
--

M.bar = function()
  print("I am public function!")
end

M.baz = function()
  print("I am public function too!")
end



--
-- End
--

return M
