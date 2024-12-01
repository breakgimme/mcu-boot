[v0.1]
breakgimme
14.10.2024
--

(if youre reading this as part of an initramfs archive then you should know that this originally came packaged with helper scripts)
(this also never should come packaged with a dump, i do not condone unauthorized sharing of the tesla os image)
the thing youre looking at is a collection of patches i used to get the tesla mcu software running in qemu
the way this is works is by using an overlayfs, so the original os image is never modified directly
it is very much prototype quality and doesnt serve any purpose other than being a novelty
you need an actual real linux touch screen computer to use this (i used a lenovo miix 510, but anything really should work)
all the binary files included have their sources specified in sources.txt

usage:
./start-qemu.sh [squashfs image] - run the provided squashfs image in qemu using the initramfs
the squashfs image should be an mcu2 image, although i havent tested what versions work and what dont
./generate.sh - generate the initramfs image from the initrd folder
./unpack.sh - unpacks initramfs.cpio.gz to initrd

issues:
PRETTY MUCH NOTHING WORKS, THIS HAS TO BE HANDLED FROM A VERY DIFFERENT ANGLE TO MAKE IT USABLE
very slow, less than 1 fps
a lot of weird hacks that were made just to get the bare minimum working

if you happen to be modifying this or smth, please at least give me some attribution in the thing youre working on
also this ideally shouldnt be shared, but i include all of this as a precaution at least
