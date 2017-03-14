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
local imageWidth             = 1920/4
local imageHeight            = 1280/4
local mX, mY                 = _K.ultimatePosition(960, 640)
local oriAlpha = 1
--
local imagePath = "p1/bg.png"
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
      layer.bg = display.newImageRect( _K.imgDir..imagePath, imageWidth, imageHeight)
    -- layer.bg = newImageRect(bg, imageWidth, imageHeight )
    layer.bg.imagePath = imagePath
    layer.bg.x = mX
    layer.bg.y = mY
    layer.bg.alpha = oriAlpha
    layer.bg.oldAlpha = oriAlpha
    layer.bg.blendMode = ""
    layer.bg.oriX = layer.bg.x
    layer.bg.oriY = layer.bg.y
    layer.bg.oriXs = layer.bg.xScale
    layer.bg.oriYs = layer.bg.yScale
    layer.bg.name = "bg"
    sceneGroup.bg = layer.bg
          sceneGroup:insert( layer.bg)
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