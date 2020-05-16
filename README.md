# Atomic Pi MDG-217 Camera Module Userspace Binaries for ARM Devices

The MDG-217 camera is a camera assembly sold by Digital Loggers Inc. and meant to be bundled with the Atomic Pi SBC.
This is a computer board that was the result of a failed startup called the Kuri robot home assistant. DLi does not
mention that this camera **will** work on arm boards like the Raspberry Pi with a little extra work. Mxcam is a closed
source binary, so it can't be cross-compiled, however I was lucky to find a compiled arm binary to share with you all.

#### Upon scouring the internet, I have found an armhf version of the mxcam binary. Subsequently, I have compiled all the necessary binaries and scripts into one GitHub repository to make it easier to get working. 

# To install:
1. Install `rsync` by issuing `sudo apt install rsync`
2. Clone the repository and `cd` to it
3. `rsync -avd ./ /`
4. `chmod +x /usr/bin/boot_camera.sh` 
5. Reboot and then try plugging in your MDG-217 camera to your ARM SBC and see if it loads.

### NOTE: You may have to install DLI's video4linux kernel patch to enable the h264 acceleration hardware block inside the camera.

#### This should work on any ARM Linux machine running a recent kernel with libusb and video4linux support.
#### Tested examples:
- Raspberry Pi 4
- ODROID XU4
