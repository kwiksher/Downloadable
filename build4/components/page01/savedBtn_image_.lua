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
local imageWidth             = 282/4
local imageHeight            = 76/4
local mX, mY                 = _K.ultimatePosition(950, 1121)
local oriAlpha = 1
--
local imagePath = "p1/savedbtn.png"
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
      layer.savedBtn = display.newImageRect( _K.imgDir..imagePath, imageWidth, imageHeight)
    -- layer.savedBtn = newImageRect(savedbtn, imageWidth, imageHeight )
    layer.savedBtn.imagePath = imagePath
    layer.savedBtn.x = mX
    layer.savedBtn.y = mY
    layer.savedBtn.alpha = oriAlpha
    layer.savedBtn.oldAlpha = oriAlpha
    layer.savedBtn.blendMode = ""
    layer.savedBtn.oriX = layer.savedBtn.x
    layer.savedBtn.oriY = layer.savedBtn.y
    layer.savedBtn.oriXs = layer.savedBtn.xScale
    layer.savedBtn.oriYs = layer.savedBtn.yScale
    layer.savedBtn.name = "savedBtn"
    sceneGroup.savedBtn = layer.savedBtn
          sceneGroup:insert( layer.savedBtn)
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