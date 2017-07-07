return { new = function(params)

  -- Construct and initialize instance
  local Inst = display.newCircle(0, 0, 0) or {}
  -- local Inst = require("parent-class-module").new() -- To extend a custom object

  -- Public properties
  Inst.publicVariable = nil

  -- Private variables
  local privateVariable

  -- Private functions
  local function privateFunction() end

  -- Public methods with access to `self` reference
  function Inst:publicFunction() end

  -- Overriding inherited methods
  -- function Inst:inheritedMethod() end

  -- Calling super class methods
  -- Inst.superInheritedMethod = Inst.inheritedMethod
  -- function Inst:inheritedMethod()
  --   self:superInheritedMethod()
  --   -- extend method...
  -- end

return Inst end }
