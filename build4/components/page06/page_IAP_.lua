-- Code created by Kwik - Copyright: kwiksher.com   2016
-- Version: 4.0.1 01
-- Project: Downloadable
--
local _M = {}
local _K = require "Application"
local composer = require("composer")
local store = require ( "store" ) -- Available in Corona build #261 or later
---------------------
---------------------
local ui          = require("components.store.UI")
--
function _M:localPos(UI)
    local sceneGroup  = UI.scene.view
    local layer       = UI.layer
  -- Page properties
end
--
function _M:localVars(UI)
end
--
function _M:allListeners(UI)
      if not ui.hasDownloaded( "Epsode03" ) then
        --Page restricted. Send to pageError
        local infoString = "This page needs to be purchased."
        local function onComplete( event )
            if "clicked" == event.action then
                local i = event.index
                if 1 == i then
                    -- dispose()
                    if nil~= composer.getScene("views.page01Scene") then
                      composer.removeScene("views.page01Scene", true)
                    end
                    composer.gotoScene("views.page01Scene", { effects = "fromLeft" } )
    -- protect_2
                end
             end
        end
        local alert = native.showAlert("Restricted Content", infoString,{ "OK" }, onComplete)
    end
  end
--
function _M:willHide(UI)
end
--
function _M:toDispose(UI)
end
--
return _M