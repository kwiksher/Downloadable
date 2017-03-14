local M = {}
--
local IAP             = require("components.store.IAP")
--
local YourHost = "http://localhost:4000/daily"
M.URL          = YourHost.."/downlodable/"
--
M.epsodes = {
            Epsode02  ={name = "Epsode02", dir = "assets/images/p4", numOfPages = 2, info = "p3"},
            Epsode03  ={name = "Epsode03", dir = "assets/images/p6", numOfPages = 1, info = "p"},
    }
M.catalogue = {
    products = {
            Epsode02 = {
            productNames = { apple="Epsode02_apple", google="Epsode02_googgle", amazon="Epsode02_amazon"},
            productType  = "non-consumable",
            onPurchase   = function() IAP.setInventoryValue("unlock_Epsode02") end,
            onRefund     = function() IAP.removeFromInventory("unlock_Epsode02") end,
        },
            Epsode03 = {
            productNames = { apple="Epsode03_apple", google="Epsode03_googgle", amazon="Epsode03_amazon"},
            productType  = "non-consumable",
            onPurchase   = function() IAP.setInventoryValue("unlock_Epsode03") end,
            onRefund     = function() IAP.removeFromInventory("unlock_Epsode03") end,
        },
    },
    inventoryItems = {
            unlock_Epsode02 = { productType="non-consumable" },
            unlock_Epsode03 = { productType="non-consumable" },
    }
}
M.purchaseAlertMessage = "Your purchase was successful"
M.restoreAlertMessage  = "Your items are being restored"
M.downloadErrorMessage = "Check network alive to download the content"
M.gotoSceneEffect   = "slideRight"
M.showOverlayEffect = "slideBottom"
M.getPageNum = function(epsode)
    local pNum = M.epsodes[epsode].dir
    pNum = pNum:sub(16)
    return pNum
end
M.getPageName = function (epsode)
    local pNum = M.epsodes[epsode].dir
    pNum = pNum:sub(16)
    return "views.page0"..pNum.."Scene"
end
M.getPageInfo = function (epsode)
    local pNum = M.epsodes[epsode].info
    if string.len(pNum) > 0 then
        pNum = pNum:sub(2)
        return "views.page0"..pNum.."Scene"
    else
        return false
    end
end
return M