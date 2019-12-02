Atomic Pi MDG-217 Camera Module Userspace Binaries for ARM Devices

#### Upon scouring the internet, I have found an armhf version of the mxcam binary. Subsequently, I have compiled all the necessary binaries and scripts into one GitHub repository to make this easier. 

# To install:
1. Clone the repository
2. Run `sudo ./install.sh` with root privileges after changing to the repository directory.
3. Reboot and then try plugging in your MDG-217 camera to your ARM SBC and see if it loads.

### This should work on any ARM Linux machine running a recent kernel with libusb and video4linux support.
### Tested examples:
- Raspberry Pi
- ODROID XU4
