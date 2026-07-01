#!/bin/bash
set -e

ROOT=$(realpath ../..)

echo "Installing BusyBox static to rootfs..."
wget -O $ROOT/rootfs/bin/busybox https://busybox.net/downloads/binaries/1.35.0-x86_64-linux-musl/busybox
chmod +x $ROOT/rootfs/bin/busybox
ln -sf /bin/busybox $ROOT/rootfs/sbin/init
echo "Finished."
