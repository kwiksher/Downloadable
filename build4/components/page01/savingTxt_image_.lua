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
local imageWidth             = 306/4
local imageHeight            = 84/4
local mX, mY                 = _K.ultimatePosition(951, 1042)
local oriAlpha = 1
--
local imagePath = "p1/savingtxt.png"
--
function _M:localVars(UI)
    end
--
--[[
local info     = require ("assets.sprites.".."page1")
local sheet    = graphics.newImageSheet ( _K.spriteDir.."page1.png", info:getSheet() )
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
      layer.savingTxt = display.newImageRect( _K.imgDir..imagePath, imageWidth, imageHeight)
    -- layer.savingTxt = newImageRect(savingtxt, imageWidth, imageHeight )
    layer.savingTxt.imagePath = imagePath
    layer.savingTxt.x = mX
    layer.savingTxt.y = mY
    layer.savingTxt.alpha = oriAlpha
    layer.savingTxt.oldAlpha = oriAlpha
    layer.savingTxt.blendMode = ""
    layer.savingTxt.oriX = layer.savingTxt.x
    layer.savingTxt.oriY = layer.savingTxt.y
    layer.savingTxt.oriXs = layer.savingTxt.xScale
    layer.savingTxt.oriYs = layer.savingTxt.yScale
    layer.savingTxt.name = "savingTxt"
    sceneGroup.savingTxt = layer.savingTxt
          sceneGroup:insert( layer.savingTxt)
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