-- Code created by Kwik - Copyright: kwiksher.com 2016
-- Version: 4.0.1 01
-- Project: Downloadable
--
local _Class = {}
--
function _Class:new(super)
	local context = super
	--
	function context:init()
------------------------------------------------------------
------------------------------------------------------------
				self:mapMediator("views.page06Scene", "mediators.page06Mediator")
		--
		--
	end
  --
  function context:addInitializer(t)
  	local t = require(t)
  	for k,v in pairs(t) do self.Router[k] = v end
  end
  --
	return context
end
--
return _Class