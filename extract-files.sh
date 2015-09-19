#!/bin/sh

VENDOR=meizu
DEVICE=arale

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
STOCK_DIR="/media/antoine/SlowStore/dev/mx4-sailport/converter/Converter_system_Lollipop/Out/mount/"

echo "Pulling $DEVICE files..."
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
	DIR=`dirname $FILE`
	if [ ! -d $BASE/$DIR ]; then
		mkdir -p $BASE/$DIR
	fi
	#adb pull /system/$FILE $BASE/$FILE
	cp -a $STOCK_DIR/$FILE $BASE/$FILE
done

./setup-makefiles.sh
