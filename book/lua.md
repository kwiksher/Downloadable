# Inside Lua Files
* donwload server URL is in tmplt/components/store/model.lua
 
 When you configure official In-App Purchase settings for apple store(iTunes connect), google play(developer console) or amazon(developer portal),
 please set the product names/IDs of the configurations to model.lua

 for device build, please modify the following values  
 * build4/components/store/model.lua productNames official for apple, google and amazon
 * build4/components/store/IAP.lua debugmode = false

## table of store lua files

|| | |
|:--|:--|:--:|
|command.lua|||
|downloadManager.lua|||
|IAP.lua||please edit for debug mode|
|iap_badger.lua|||
|model.lua||please edit for product IDs|
|scene.lua|||
|spinner.lua||you may change spinner animation|
|UI.lua|||

## model.lua - tmplt/components/store/

* please set your host URL of web server to YourHost variable
<img src=".\img\bandicam 2017-03-14 01-30-28-983.jpg" width = 800 >

### if model.URL = nil
* this means simple IAP store without network download like Kwik3 IAP
-- downloadBtn, savingTxt won't be used. You don't need to create them.
--

## model.lua - published 
* when debug/test in corona simulator finished, the table should be configured with the official productNames from apple, google and amazon for device build.

for instance, Epsode02_apple has been set for debug mode. So you need to replace it from M.catalog.products table. 

<img src=".\img\bandicam 2017-03-14 01-40-47-259.jpg" width = 800 >

## IAP.lua - components/store/
* IAP.lua uses iap_badger that is well known library of Corona SDK http://happymongoosegames.co.uk/iapbadger.php
* the text in salt is used for the hashing algorithm. Please set any text of your own.
* debugMode is true for default. Please set false for device build

<img src=".\img\bandicam 2017-03-13 17-43-39-988.jpg" width = 800 >



# How it works
toc.psd is internnaly handled as page01. Let's show some codes that creates purchase buttons for Epsode2 and Epsode3 automatically.

## table of pages
|| | |
|:--|:--|:--:|
|1|toc.psd | table of contents, user to read an epsode or to purchase an epsode |
|2|ep01.psd      | Epsode1 |
|3|ep02_info.psd | Epsode2 Purchase Infomation |
|4|ep02_1        | Epsode2-1 |
|5|ep02_2        | Epsode2-2 |
|6|ep03          | Epsode3 |

## page_IAP.lua - componens/page01/
* creates instances of displayObject and eventListener of restoreBtn for Epsode2 automatically referencing to "restoreBtn" layer
* creates instances of displayObjects and eventListeners of purchase/donwload/savingTxt/savedBtn for Epsode2 automatically referencing to "Epsode02Icon" layer
* creates displayObjects and eventListeners of purchase/donwload/savingTxt/savedBtn for Epsode3 automatically referencing to "Epsode03Icon" layer
  
<img src=".\img\bandicam 2017-03-13 17-01-05-155.jpg" width = 800 >

* Epsode1 is free and there is no button
* the purchase buttons for Epsode2 and Epsode3 are created
<img src=".\img\bandicam 2017-03-13 17-15-49-411.jpg" width = 400 >

this UI creation also works for page03 of ep02_info.psd that has "Epsode02Icon" layer.

### CMD.init
Inside CMD.init calls IAP.init to set up the product table from model.lua. For external codes, you may call the following function to check whether a pruduct has been purchased or not.

* local IAP             = require("components.store.IAP")
* local productName = "Epsode02"
* IAP.getInventoryValue("unlock_"..productName) returns true or false