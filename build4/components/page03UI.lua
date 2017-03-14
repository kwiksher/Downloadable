-- Code created by Kwik - Copyright: kwiksher.com 2016
-- Version: 4.0.1 01
-- Project: Downloadable
--
local _Class   = {}
local layerUI  = require("components.kwik.layerUI")
local const    = require("vo.page03VO").const
local composer = require( "composer" )
local _K       = require("Application")
---------------------
---------------------
_Class.new = function(scene)
  local UI = layerUI.new()
    UI.scene     = scene
    UI.page      = "page03"
    UI.curPage   = 03
    -- All components on a table
    UI.layer     = {}
    -- All audio files on a table
    UI.allAudios = {}
    UI.allAudios.kAutoPlay = 0
    UI.tSearch   = nil
          UI.tSearch   = nil
    UI.numPages = 6   -- number of pages in the project
  function UI:setLanguge()
            if _K.lang == "" then _K.lang = "en" end
      end
  --
  function UI:setVars()
        self:_vars("image",  const.bg_image_, false)
        self:_vars("image",  const.Epsode02Icon_image_, false)
        self:_vars("image",  const.savedBtn_image_, false)
        self:_vars("image",  const.savingTxt_image_, false)
        self:_vars("image",  const.downloadBtn_image_, false)
        self:_vars("image",  const.purchaseBtn_image_, false)
        self:_vars("IAP",  const.page_IAP_, false)
        self:_vars("swipe",  const.page_swipe_bg, false)
    end
  --
  function UI:create()
    self:_create("common",  const.page_common, false)
    self:setVars()
    self:setLanguge()
        self:_create("image",  const.bg_image_, false)
        self:_create("image",  const.Epsode02Icon_image_, false)
        self:_create("image",  const.savedBtn_image_, false)
        self:_create("image",  const.savingTxt_image_, false)
        self:_create("image",  const.downloadBtn_image_, false)
        self:_create("image",  const.purchaseBtn_image_, false)
        self:_create("IAP",  const.page_IAP_, false)
        self:_create("swipe",  const.page_swipe_bg, false)
    end
  --
  function UI:didShow(params)
    self:_didShow("common",  const.page_common, false)
        self:_didShow("image",  const.bg_image_, false)
        self:_didShow("image",  const.Epsode02Icon_image_, false)
        self:_didShow("image",  const.savedBtn_image_, false)
        self:_didShow("image",  const.savingTxt_image_, false)
        self:_didShow("image",  const.downloadBtn_image_, false)
        self:_didShow("image",  const.purchaseBtn_image_, false)
        self:_didShow("IAP",  const.page_IAP_, false)
        self:_didShow("swipe",  const.page_swipe_bg, false)
    end
  --
  function UI:didHide(params)
    self:_didHide("common",  const.page_common, false)
        self:_didHide("image",  const.bg_image_, false)
        self:_didHide("image",  const.Epsode02Icon_image_, false)
        self:_didHide("image",  const.savedBtn_image_, false)
        self:_didHide("image",  const.savingTxt_image_, false)
        self:_didHide("image",  const.downloadBtn_image_, false)
        self:_didHide("image",  const.purchaseBtn_image_, false)
        self:_didHide("IAP",  const.page_IAP_, false)
        self:_didHide("swipe",  const.page_swipe_bg, false)
    end
  --
  function UI:destroy(params)
    self:_destroy("common",  const.page_common)
        self:_destroy("image",  const.bg_image_, false)
        self:_destroy("image",  const.Epsode02Icon_image_, false)
        self:_destroy("image",  const.savedBtn_image_, false)
        self:_destroy("image",  const.savingTxt_image_, false)
        self:_destroy("image",  const.downloadBtn_image_, false)
        self:_destroy("image",  const.purchaseBtn_image_, false)
        self:_destroy("IAP",  const.page_IAP_, false)
        self:_destroy("swipe",  const.page_swipe_bg, false)
    end
  --
  function UI:touch(event)
      print("event.name: "..event.name)
  end
  function UI:resume(params)
        self:_resume("image",  const.bg_image_, false)
        self:_resume("image",  const.Epsode02Icon_image_, false)
        self:_resume("image",  const.savedBtn_image_, false)
        self:_resume("image",  const.savingTxt_image_, false)
        self:_resume("image",  const.downloadBtn_image_, false)
        self:_resume("image",  const.purchaseBtn_image_, false)
        self:_resume("IAP",  const.page_IAP_, false)
        self:_resume("swipe",  const.page_swipe_bg, false)
    end
  --
  return  UI
end
--
return _Class