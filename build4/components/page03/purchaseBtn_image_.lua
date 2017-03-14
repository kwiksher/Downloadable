-- Code created by Kwik - Copyright: kwiksher.com 2016
-- Version: 4.0.1 01
-- Project: Downloadable
--
local _M = {}
--
local _K = require "Application"
--
function _M:myMain()
end
-- not
local imageWidth             = 408/4
local imageHeight            = 86/4
local mX, mY                 = _K.ultimatePosition(951, 866)
local oriAlpha = 1
--
local imagePath = "p3/purchasebtn.png"
--
function _M:localVars(UI)
    end
--
--[[
local info     = require ("assets.sprites.".."page3")
local sheet    = graphics.newImageSheet ( _K.spriteDir.."page3.png", info:getSheet() )
local sequence = {start=1, count= #info:getSheet().frames }
function newImageRect(name, width, height)
  local image
  if string.find(name, "background") == nil then
      image = display.newSprite(sheet, sequence)
      image.name = name
      image:setFrame (info:getFrameIndex (name))
      image.width, image.height = width, height
      else
       image = display.newImageRect(_K.imgDir..name.."."..png, width, height)
      end
   return image
end
--]]
--
function _M:localPos(UI)
  local sceneGroup  = UI.scene.view
  local layer       = UI.layer
      layer.purchaseBtn = display.newImageRect( _K.imgDir..imagePath, imageWidth, imageHeight)
    -- layer.purchaseBtn = newImageRect(purchasebtn, imageWidth, imageHeight )
    layer.purchaseBtn.imagePath = imagePath
    layer.purchaseBtn.x = mX
    layer.purchaseBtn.y = mY
    layer.purchaseBtn.alpha = oriAlpha
    layer.purchaseBtn.oldAlpha = oriAlpha
    layer.purchaseBtn.blendMode = ""
    layer.purchaseBtn.oriX = layer.purchaseBtn.x
    layer.purchaseBtn.oriY = layer.purchaseBtn.y
    layer.purchaseBtn.oriXs = layer.purchaseBtn.xScale
    layer.purchaseBtn.oriYs = layer.purchaseBtn.yScale
    layer.purchaseBtn.name = "purchaseBtn"
    sceneGroup.purchaseBtn = layer.purchaseBtn
          sceneGroup:insert( layer.purchaseBtn)
    --
    end
--
function _M:allListeners(UI)
  local sceneGroup  = UI.scene.view
  local layer       = UI.layer
      end
--
function _M:toDispose(UI)
  local sceneGroup  = UI.scene.view
  local layer       = UI.layer
      end
--
function  _M:toDestory()
end
--
return _M