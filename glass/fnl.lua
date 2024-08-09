--- Loader for fennel files
-- @module glass.fnl

--- Loads and compiles a fennel file and runs it.
-- Returns the result of running the fennel file.
-- If running the code immediately is not desired,
-- it has to be returned as a function.
-- @return The result of the fennel file after running it
-- @function load


local fennel=require("fennel")
local x fennel.install()


return function(name)
   local f = x.dofile(name..'.fnl')
	return f and f() or nil
end
