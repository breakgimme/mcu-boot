#!/bin/sh
if ! command -v curl 2>&1 >/dev/null
then
	echo "curl missing"
        exit 1
fi
if [ ! -d "initrd"  ]
then
	echo "unpack initrd first"
	exit 1
fi
curl -LO https://github.com/breakgimme/mcu-boot/releases/download/none/bzImage
curl -L --output initrd/stuff/itspowered.so https://github.com/breakgimme/mcu-boot/releases/download/none/itspowered.so
curl -L --output initrd/stuff/usr/lib/dri/swrast_dri.so https://github.com/breakgimme/mcu-boot/releases/download/none/swrast_dri.so
curl -L --output initrd/stuff/usr/lib/xorg/modules/drivers/modesetting_drv.so https://github.com/breakgimme/mcu-boot/releases/download/none/modesetting_drv.so
curl -L --output initrd/bin/toybox https://github.com/breakgimme/mcu-boot/releases/download/none/toybox
chmod +x initrd/bin/toybox
