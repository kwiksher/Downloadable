-- Code created by Kwik - Copyright: kwiksher.com 2016
-- Version: 4.0.1 01
-- Project: Downloadable
--
local Context = require "extlib.robotlegs.Context"
local _Class = {}
local page01Context = require("contexts.page01Context")
local page03Context = require("contexts.page03Context")
local page02Context = require("contexts.page02Context")
local page04Context = require("contexts.page04Context")
local page05Context = require("contexts.page05Context")
local page06Context = require("contexts.page06Context")
--
function _Class:new()
	local context = Context:new()
	context.Router = {}
	--
	function context:init()
		------------------------------------------------------------
		------------------------------------------------------------
		    self.context01 = page01Context:new(self)
	    self.context01:init()
		    self.context03 = page03Context:new(self)
	    self.context03:init()
		    self.context02 = page02Context:new(self)
	    self.context02:init()
		    self.context04 = page04Context:new(self)
	    self.context04:init()
		    self.context05 = page05Context:new(self)
	    self.context05:init()
		    self.context06 = page06Context:new(self)
	    self.context06:init()
	-- app init command
		self:mapCommand("app.Ads",          "commands.app.Ads")
		self:mapCommand("app.bookmark",     "commands.app.bookmark")
		-- self:mapCommand("app.coronaViewer", "commands.app.coronaViewer")
		self:mapCommand("app.droidHWKey",   "commands.app.droidHWKey")
		-- self:mapCommand("app.expDir",       "commands.app.expDir")
		self:mapCommand("app.extCodes",     "commands.app.extCodes")
		self:mapCommand("app.kwkVar",       "commands.app.kwkVar")
		-- self:mapCommand("app.loadLib",      "commands.app.loadLib")
		-- self:mapCommand("app.memoryCheck",  "commands.app.memoryCheck")
		self:mapCommand("app.statusBar",    "commands.app.statusBar")
		self:mapCommand("app.suspend",      "commands.app.suspend")
		-- self:mapCommand("app.variables",    "commands.app.variables")
		-- self:mapCommand("app.versionCheck", "commands.app.versionCheck")
		--
		self:mapMediator("Application", "mediators.ApplicationMediator")
		--
		Runtime:dispatchEvent({name="startup"})
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