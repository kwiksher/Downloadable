# Downlodable Sample
* A sample app consists of three epsodes. Epsode1 is free, Epsode2 and Epsode3 are to be paied.
* Once paied, the image files of Eposde2 or Epsode3 is downloaded from an Internet server

## Sample app

|| | |
|:--|:--|:--:|
|1|toc.psd | table of contents, user to read an epsode or to purchase an epsode |
|2|ep01.psd      | Epsode1 |
|3|ep02_info.psd | Epsode2 Purchase Infomation |
|4|ep02_1        | Epsode2-1 |
|5|ep02_2        | Epsode2-2 |
|6|ep03          | Epsode3 |

## Usecases
### Purchase
* user purchases Epsode2 from  toc
* alternatively user goes to ep02_info by clicking Epsode02Icon on toc. 
* when user pruchased, Epsode2Icon goes to ep02_1 page not to ep02_info


### Restore
* user taps the restore button on toc to recover all
* The epsode been purchased is to be donwloaded again when user clicks the download button

## Preparation
### copyright.txt
create a text file and put your copyright message in it.
name it as copyright.txt and put it each image folder of pages.

Kwik4 outputs images to build4/assets/images with "p##" folder
Where ## is the number of page. 

For Epsode02
* build4/assets/images/p4
* build4/assets/images/p5
* zip the image files of Epsode2-1 and Epsode2-2 as Epsode02/assets.zip

For Epsode03
* build4/assets/images/p6
* zip the imagefiles of Epsode3 as Epsode03/assets.zip

Put them on a http server for instance, 
* http://YourHost:4000/downloadable/Epsode02/assets.zip
* http://YourHost:4000/downloadable/Epsode03/assets.zip

# Kwik3
    under costruction
# Kwik4
Please download the latest daily build of Corona SDK. 
* <a ref="https://developer.coronalabs.com/downloads/daily-builds">Daily Build</a>

Please update Kwik4 to the latest one
* http://kwiksher.com/daily/Kwik4_2017_0314.zip

sample project 
* http://kwiksher.com/daily/support/downloadable.zip


## Project Properties
Please set product name and ID from In-App Purchase from Monetization tab. For instance, Epsode02 pages are p4-p5, startPageNum is 4 and numOfPages is 2 and the infomation page is p3 so that infoPage is 3

* Product: Epsode02, ID: 4_2_3

ID :={{startPageNum}}_{{numOfPages}}_{{infoPage}}

if infoPage not exist, please make it empty. So Epsode03's ID  6_1_ is OK

* Product: Epsode03, ID: 6_1_

note: next week, I will update Monetization Panel with startPageNum, numOfPages and infoPage field, and each product ID for apple, google and amazon.

With debug mode with these dummy ID, you can test your app with Corna simulator. iap_badger library performs faking purchase with debug mode. 

You can edit components/store/model.lua in order to set valid product IDs of apple, google and amazon when building for device


<img src=".\img\bandicam 2017-03-13 22-24-48-066.jpg" width = 400 >

## toc.psd

<img src=".\img\bandicam 2017-03-13 16-07-10-667.jpg" width = 600 >

### Layers
Need to create the following layers with the name given because store/UI.lua references to each layer name.
* restoreBtn
* purchaseBtn
* downloadBtn
* savingTxt
* savedBtn
* Epsode01Icon
* Epsode02Icon
* Epsode03Icon

Need to create an action from "Project and Pages" > "Action" 
* Monetization to add Buy Product "Epsode02"
* Monetization to add Buy Product "Epsode03"

<img src=".\img\bandicam 2017-03-13 23-06-29-490.jpg" width = 600 >


## ep02_info.psd

<img src=".\img\bandicam 2017-03-14 01-21-03-236.jpg" width = 600 >

Need to create an action from "Project and Pages" > "Action" 
* Monetization to add Buy Product "Epsode02"

<img src=".\img\bandicam 2017-03-13 23-06-54-779.jpg" width = 400 >

### Layers
Need to create the following layers with the name given because store/UI.lua references to each layer name.
* purchaseBtn
* downloadBtn
* savingTxt
* savedBtn
* Epsode02Icon
* hideOverlayBtn

## ep01.psd
* epsode01 is free
* Check off prelodng next page at "Page Properties > Preload next scene" because ep02_1 is paied page, it prevents from  showing an alert for purchase when ep01 is loaded 

<img src=".\img\bandicam 2017-03-13 16-19-31-582.jpg" width = 400 >

## ep02-1.psd
* epsode2 is a paied content
* Set product "Epsode02" and redirect to toc page if not paied from "Page Properites > In-App Unlock"

<img src=".\img\bandicam 2017-03-13 16-34-16-954
.jpg" width = 400 >

## ep02-2.psd
* epsode2 is a paied content
* Set product "Epsode02" and redirect to toc page if not paied from "Page Properites > In-App Unlock"

## ep03.psd
* epsode3 is a paied content
* Set product "Epsode03" and redirect to toc page if not paied from "Page Properites > In-App Unlock"

# Publish

# Custom files

