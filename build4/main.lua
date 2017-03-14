-- Template Version 2016.0010
-- Code created by Kwik - Copyright: kwiksher.com 2016
-- Version: 4.0.1 01
-- Project: Downloadable
--
local function startThisMug()
	local _K = require "Application"
	local function bootstrap()
		display.setStatusBar(display.HiddenStatusBar)
		_K.appName     = ""
				_K.imgDir      = "assets/images/"
		_K.spriteDir   = "assets/sprites/"
		_K.thumbDir    = "assets/thumbnails/"
		_K.audioDir    =  "assets/audios/"
		_K.videoDir    =  "assets/videos/"
		_K.particleDir = "assets/particles/"
		_K.trans       = {}
		_K.gt          = {}
		_K.timerStash   = {}
		_K.allAudios    = {kAutoPlay = 5}
		_K.gtween      = require("extlib.gtween")
		_K.btween      = require("extlib.btween")
		_K.Gesture     = require("extlib.dmc_gesture")
		_K.MultiTouch  = require("extlib.dmc_multitouch")
		_K.syncSound   = require("extlib.syncSound")
		_K.kBidi       = false
		_K.goPage      = 1
		_K.kAutoPlay   = 0
		_K.lang        =""
		-- _K.stage       = display.getCurrentStage()
		system.activate("multitouch")
		_K.appInstance = _K:new()
		_K.randomAction  = {}
		_K.randomAnim  = {}
		_K.kwikDir      = "c:/Users/ymmtny/Documents/Kwik/Downloadable"
		_K.asmModel = {
		  sandboxPath = system.pathForFile( nil, system.DocumentsDirectory ),
		  projPath    = _K.kwikDir,
		  APNG        = {},
		  AGIF        = {}
		}
	end
	--
	bootstrap()
end
--
local function onError(e)
	print("--- unhandledError ---")
	print(e)
	return true
end
--
Runtime:addEventListener("unhandledError", onError)
timer.performWithDelay(100, startThisMug)
-------------------------------------------------
-- build.settings neverStripDebugInfo
-------------------------------------------------
--[[
local log = require("extlib.log")
local path = system.pathForFile("log.db", system.DocumentsDirectory)
db = sqlite3.open(path)
log:set(db, "support@kwiksher.com")
]]