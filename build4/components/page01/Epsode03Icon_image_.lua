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
local imageWidth             = 494/4
local imageHeight            = 404/4
local mX, mY                 = _K.ultimatePosition(1544, 660)
local oriAlpha = 1
--
local imagePath = "p1/epsode03icon.png"
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
      layer.Epsode03Icon = display.newImageRect( _K.imgDir..imagePath, imageWidth, imageHeight)
    -- layer.Epsode03Icon = newImageRect(epsode03icon, imageWidth, imageHeight )
    layer.Epsode03Icon.imagePath = imagePath
    layer.Epsode03Icon.x = mX
    layer.Epsode03Icon.y = mY
    layer.Epsode03Icon.alpha = oriAlpha
    layer.Epsode03Icon.oldAlpha = oriAlpha
    layer.Epsode03Icon.blendMode = ""
    layer.Epsode03Icon.oriX = layer.Epsode03Icon.x
    layer.Epsode03Icon.oriY = layer.Epsode03Icon.y
    layer.Epsode03Icon.oriXs = layer.Epsode03Icon.xScale
    layer.Epsode03Icon.oriYs = layer.Epsode03Icon.yScale
    layer.Epsode03Icon.name = "Epsode03Icon"
    sceneGroup.Epsode03Icon = layer.Epsode03Icon
          sceneGroup:insert( layer.Epsode03Icon)
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