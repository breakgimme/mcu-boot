#!/bin/sh
mkdir -p initrd
cd initrd
gzip -dc ../initramfs.cpio.gz | cpio -idmv
