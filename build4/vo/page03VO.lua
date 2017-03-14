-- Code created by Kwik - Copyright: kwiksher.com 2016
-- Version: 4.0.1 01
-- Project: Downloadable
--
local VO = {}
VO.field = "page03" --
---------------------
---------------------
local Const = require("extlib.const")
VO.const = Const:new{
	"page_common",
			"bg_image_",
			"Epsode02Icon_image_",
			"savedBtn_image_",
			"savingTxt_image_",
			"downloadBtn_image_",
			"purchaseBtn_image_",
			"page_IAP_",
			"page_swipe_bg",
	}
---------------------
---------------------
VO.new = function(val)
	local vo = {
	page_common = val.page_common,
					bg_image_ = val.bg_image_,
					Epsode02Icon_image_ = val.Epsode02Icon_image_,
					savedBtn_image_ = val.savedBtn_image_,
					savingTxt_image_ = val.savingTxt_image_,
					downloadBtn_image_ = val.downloadBtn_image_,
					purchaseBtn_image_ = val.purchaseBtn_image_,
					page_IAP_ = val.page_IAP_,
					page_swipe_bg = val.page_swipe_bg,
		}
	--
	function vo:copyFrom(copyVO)
	end
	--
	function vo:valueOf()
		return baseDir.."/"..self.filename
	end
	--
	return vo
end
--
VO.equal = function(vo1, vo2)
	return vo1.valueOf() == vo2.valueOf()
end
--
return VO