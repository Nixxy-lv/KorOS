#!/bin/zsh

## Apply the rootfs/
cd rootfs && find . -print0 | cpio --null -o -H newc | gzip -9 > ../iso/boot/initramfs.cpio.gz && cd ..

## Apply the grub.cfg
rm -f KoreOS.iso && grub2-mkrescue -o KoreOS.iso iso/
