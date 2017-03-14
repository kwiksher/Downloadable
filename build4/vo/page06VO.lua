-- Code created by Kwik - Copyright: kwiksher.com 2016
-- Version: 4.0.1 01
-- Project: Downloadable
--
local VO = {}
VO.field = "page06" --
---------------------
---------------------
local Const = require("extlib.const")
VO.const = Const:new{
	"page_common",
			"Layer_1_image_",
			"page_IAP_",
			"page_swipe_Layer_1",
	}
---------------------
---------------------
VO.new = function(val)
	local vo = {
	page_common = val.page_common,
					Layer_1_image_ = val.Layer_1_image_,
					page_IAP_ = val.page_IAP_,
					page_swipe_Layer_1 = val.page_swipe_Layer_1,
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