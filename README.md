Cyanogenmod Arale device adaptation
-----------------------------------

This repo is the device adaptation for Arale within CM 12.

I am not responsible for what you do with this.
This has only been tested with a Meizu MX4 ubuntu edition.

Working
=======
* Display
* Touch
* Orientation
* Battery
* Wifi
* Sound
* GPS
* Bluetooth
* Camera (photo)

Not working
===========
* Vibration
* Cellular
* Camera (video)

How to build
============

* Checkout this repo into device/meizu/arale in you Cyanogenmod 12 repo
* Get a flymeos 4.5 update image
* Decompress the image
* Rebuild the system.img using a converter such as http://nextgen4k.blogspot.ca/2015/02/lollipop-dat-files-decompress.html#.VfyoV5cVVZ4
* Mount the system.img somewhere
* Change the variable ```STOCK_DIR``` in extract_files.sh to reflect where you mounted the system.img
* Run extract-files.sh to populate vendor/meizu/arale with the proprietary files
* Go back to the root of your repository
* ```. ./build/envsetup.sh```
* ```lunch cm_arale-userdebug```
* ```brunch arale```
* Go for a walk this might be long
