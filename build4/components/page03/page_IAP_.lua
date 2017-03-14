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
    -- see iap(myi).jsx
    -- In-app purchase{{}}
    local listOfProducts = {
                  "4_2_3",
                  "6_1_",
        }
local model       = require("components.store.model")
local ui          = require("components.store.UI").new()
local cmd         = require("components.store.command").new()
---------------------
function _M:resume()
  ui:refresh(true)
end
--
local function store_init(sceneGroup, layer)
    ui:init(sceneGroup, layer, true)
    cmd:init(ui)
    ui:create()
    -- UI:createBuyButton(model.epsode02, _W/2, _H/2, 150, 50)
    -- UI:createBuyButton(model.epsode03, _W/2, _H/2 + 50, 150, 50)
    -- UI:createRestoreButton(_W/2, _H/2+100, 150, 50)
    cmd:startDownload()
end
--
function _M:localPos(UI)
    local sceneGroup  = UI.scene.view
    local layer       = UI.layer
  -- Page properties
    store_init(sceneGroup, layer)
end
--
function _M:localVars(UI)
end
--
function _M:allListeners(UI)
  end
--
function _M:willHide(UI)
end
--
function _M:toDispose(UI)
  UI.layer.bg:removeEventListener("tap", hideOverlay)
  cmd:dispose()
end
--
return _M