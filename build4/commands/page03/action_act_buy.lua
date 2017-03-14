-- Code created by Kwik - Copyright: kwiksher.com 2016
-- Version: 4.0.1 01
-- Project: Downloadable
--
local ActionCommand = {}
local _AC           = require("commands.kwik.actionCommand")
local _K            = require "Application"
--
-----------------------------
-----------------------------
function ActionCommand:new()
	local command = {}
	--
	function command:execute(params)
		local UI         = params.UI
		local sceneGroup = UI.scene.view
		local layer      = UI.layer
			--
					_AC.Purchase:buyProduct({"4_2_3"})
		end
	return setmetatable( command, {__index=_AC})
end
--
return ActionCommand