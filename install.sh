#!/bin/bash

CONFIG_PATH='/etc/mxcam'
FW_PATH='/lib/firmware/gc6500'

mkdir -p $CONFIG_PATH
mkdir -p $FW_PATH

cp gc6500_ddrboot_fw.img sensor_ov2710_mayfield_le.bin $FW_PATH/
cp mxcam /usr/bin
cp config.json $CONFIG_PATH/

chmod +x /usr/bin/mxcam

touch /etc/udev/rules.d/500-gc6500.rules
echo -n 'ATTR{idVendor} =="29fe", ATTR{idProduct} =="b00c", MODE="0660", OWNER="root", GROUP="video", RUN+="/usr/bin/boot_camera.sh"' > /etc/udev/rules.d/500-gc6500.rules

echo "Installation complete."
