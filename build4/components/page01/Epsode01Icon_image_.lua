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
local imageWidth             = 464/4
local imageHeight            = 442/4
local mX, mY                 = _K.ultimatePosition(361, 641)
local oriAlpha = 1
--
local imagePath = "p1/epsode01icon.png"
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
      layer.Epsode01Icon = display.newImageRect( _K.imgDir..imagePath, imageWidth, imageHeight)
    -- layer.Epsode01Icon = newImageRect(epsode01icon, imageWidth, imageHeight )
    layer.Epsode01Icon.imagePath = imagePath
    layer.Epsode01Icon.x = mX
    layer.Epsode01Icon.y = mY
    layer.Epsode01Icon.alpha = oriAlpha
    layer.Epsode01Icon.oldAlpha = oriAlpha
    layer.Epsode01Icon.blendMode = ""
    layer.Epsode01Icon.oriX = layer.Epsode01Icon.x
    layer.Epsode01Icon.oriY = layer.Epsode01Icon.y
    layer.Epsode01Icon.oriXs = layer.Epsode01Icon.xScale
    layer.Epsode01Icon.oriYs = layer.Epsode01Icon.yScale
    layer.Epsode01Icon.name = "Epsode01Icon"
    sceneGroup.Epsode01Icon = layer.Epsode01Icon
          sceneGroup:insert( layer.Epsode01Icon)
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