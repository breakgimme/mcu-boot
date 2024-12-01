#!/bin/sh
if [ ! -d "initrd" ]; then
  echo "the initrd directory doesnt exist!!!"
  exit
fi
cp readme.txt sources.txt initrd/
cd initrd
find . -print0 | cpio --null -ov --format=newc | gzip -9 > ../initramfs.cpio.gz

