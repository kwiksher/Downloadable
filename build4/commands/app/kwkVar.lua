-- Code created by Kwik - Copyright: kwiksher.com {{year}}
-- Version: {{vers}}
-- Project: {{ProjName}}
--
local _Command = {}
-----------------------------
-----------------------------
function _Command:new()
	local command = {}
	--
	function command:execute(params)
		local event         = params.event
		if event=="init" then
			local json = require("json")
			-- Json code for external variable loading
			local jsonFile = function(filename )
			   local path = system.pathForFile(filename, system.DocumentsDirectory )
			   local contents
			   local file = io.open( path, "r" )
			   if file then
			      contents = file:read("*a")
			      io.close(file)
			   end
			   return contents
			end
			-- Variable saving function
			local path = system.pathForFile( "kwkVars.json", system.DocumentsDirectory )
			local file = io.open( path, "r" )
			if file == nil then
			   local file = io.open( path, "w+" )
			   file:write("{{}}")
			   io.close(file)
			end
			-- Loads vars
			kwkVar = json.decode( jsonFile("kwkVars.json") )
			-- Check for saved variables
			function kwkVarCheck(variable)
			   kwkVar = json.decode( jsonFile("kwkVars.json") )
			   local found = nil
			   if kwkVar ~= nil then
			      for i = 1, #kwkVar do
			         if (variable == kwkVar[i].name) then
			            found = kwkVar[i].value; break
			         end
			      end
			   end
			   return (found)
			end
		end
	end
	return command
end
--
return _Command