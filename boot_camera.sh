#!/bin/bash

BL_PATH='/lib/firmware/gc6500/gc6500_ddrboot_fw.img'
SENSOR_FW_PATH='/lib/firmware/gc6500/sensor_ov2710_mayfield_le.bin'
CONFIG_PATH='/etc/mxcam/config.json'

/usr/bin/mxcam boot $BL_PATH $CONFIG_PATH $SENSOR_FW_PATH
