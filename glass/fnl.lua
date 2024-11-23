--- Loader for fennel files
-- @module glass.fnl

-- the last "thing" in the fennel file is what is returned,
-- it is recommended that you return a table,
-- @return The result of the fennel code after evaluating it
-- @function load
local fennel = require("fennel")
local installed = fennel.install()
local function _1_(name)
  local cfg = installed.dofile((name .. ".fnl"))
  return true, cfg
end
return _1_
