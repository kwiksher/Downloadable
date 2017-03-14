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
local imageWidth             = 454/4
local imageHeight            = 398/4
local mX, mY                 = _K.ultimatePosition(927, 629)
local oriAlpha = 1
--
local imagePath = "p3/epsode02icon.png"
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
      layer.Epsode02Icon = display.newImageRect( _K.imgDir..imagePath, imageWidth, imageHeight)
    -- layer.Epsode02Icon = newImageRect(epsode02icon, imageWidth, imageHeight )
    layer.Epsode02Icon.imagePath = imagePath
    layer.Epsode02Icon.x = mX
    layer.Epsode02Icon.y = mY
    layer.Epsode02Icon.alpha = oriAlpha
    layer.Epsode02Icon.oldAlpha = oriAlpha
    layer.Epsode02Icon.blendMode = ""
    layer.Epsode02Icon.oriX = layer.Epsode02Icon.x
    layer.Epsode02Icon.oriY = layer.Epsode02Icon.y
    layer.Epsode02Icon.oriXs = layer.Epsode02Icon.xScale
    layer.Epsode02Icon.oriYs = layer.Epsode02Icon.yScale
    layer.Epsode02Icon.name = "Epsode02Icon"
    sceneGroup.Epsode02Icon = layer.Epsode02Icon
          sceneGroup:insert( layer.Epsode02Icon)
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