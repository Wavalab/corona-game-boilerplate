-- load dependencies here
local M = {}



-- Private
local foo = function()
  return "foobar!"
end



-- Public
M.bar = function()
  print("I am public " .. foo())
end



return M
