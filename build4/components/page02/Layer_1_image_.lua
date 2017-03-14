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
local imageWidth             = 913/4
local imageHeight            = 310/4
local mX, mY                 = _K.ultimatePosition(903, 640)
local oriAlpha = 1
--
local imagePath = "p2/layer_1.png"
--
function _M:localVars(UI)
    end
--
--[[
local info     = require ("assets.sprites.".."page2")
local sheet    = graphics.newImageSheet ( _K.spriteDir.."page2.png", info:getSheet() )
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
      layer.Layer_1 = display.newImageRect( _K.imgDir..imagePath, imageWidth, imageHeight)
    -- layer.Layer_1 = newImageRect(layer_1, imageWidth, imageHeight )
    layer.Layer_1.imagePath = imagePath
    layer.Layer_1.x = mX
    layer.Layer_1.y = mY
    layer.Layer_1.alpha = oriAlpha
    layer.Layer_1.oldAlpha = oriAlpha
    layer.Layer_1.blendMode = ""
    layer.Layer_1.oriX = layer.Layer_1.x
    layer.Layer_1.oriY = layer.Layer_1.y
    layer.Layer_1.oriXs = layer.Layer_1.xScale
    layer.Layer_1.oriYs = layer.Layer_1.yScale
    layer.Layer_1.name = "Layer_1"
    sceneGroup.Layer_1 = layer.Layer_1
          sceneGroup:insert( layer.Layer_1)
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