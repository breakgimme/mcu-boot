#!/bin/sh
if [ ! -f "$1" ]
  then
  echo "usage: ./start-qemu.sh [squashfs image]"
  exit
fi
qemu-system-x86_64 --enable-kvm -m 4G -kernel bzImage -append "console=ttyS0 acpi=off root=/dev/sda rdinit=/initscript" -initrd initramfs.cpio.gz -device virtio-gpu -usb -device virtio-multitouch-pci -serial vc -drive file=$1,format=raw
