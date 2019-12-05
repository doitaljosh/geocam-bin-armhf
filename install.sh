#!/bin/bash

CONFIG_PATH='/etc/mxcam'
FW_PATH='/lib/firmware/gc6500'
UDEV_FILE='/etc/udev/rules.d/500-gc6500.rules'

mkdir -p $CONFIG_PATH
mkdir -p $FW_PATH

cp firmware/* $FW_PATH/
cp bin/* /usr/bin/
cp config/* $CONFIG_PATH/

chmod +x /usr/bin/mxcam
chmod +x /usr/bin/boot_camera.sh

echo -n 'ATTR{idVendor} =="29fe", ATTR{idProduct} =="b00c", MODE="0660", OWNER="root", GROUP="video", RUN+="/usr/bin/boot_camera.sh"' \
> $UDEV_FILE

echo "Installation complete."
