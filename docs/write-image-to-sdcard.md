# How to write images to microSD card
The bbb/meta-bbb/scripts directory contains some scripts to work with microSD card.
- mk2parts.sh: partition SD card with the 2 partitions (boot and rootfs)
- copy_boot.sh: copy bootloader and config file to boot partition
- copy_rootfs.sh: copy Linux kernel, device tree and root file system to rootfs partition

1. Creating partitions on microSD
```sh
$ cd bbb/meta-bbb/scripts
$ sudo ./mk2parts.sh sdX
```
Where: sdX is microSD card's device name
For example: 
```sh
$ sudo ./mk2parts.sh sdc
```

2. Copy bootloader and configuration file
```sh
$ sudo ./copy_boot.sh sdc
```

3. Copy kernel and root file system
```sh
$ sudo ./copy_boot.sh sdc console
```
or
```sh
$ sudo ./copy_boot.sh sdc console bigdog
```
Where: 
- Second argument is image type
- Third argument is hostname in the case you want hostname to be somethind other than **beaglebone**

