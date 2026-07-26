#!/bin/bash
set -e
ROOT=$(realpath ../..)
cd $ROOT/packages/linux

mkdir -p $ROOT/out/kernel $ROOT/out/logs

KV=6.12.40
if [ ! -d linux-$KV ]; then
  wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-$KV.tar.xz
  tar xf linux-$KV.tar.xz
fi

cd linux-$KV

cp ../config/x86_64.config .config

export KCFLAGS="-std=gnu17 -Wno-error=implicit-function-declaration"
export HOSTCFLAGS="-std=gnu17"

make olddefconfig > $ROOT/out/logs/kernel-config.log 2>&1

echo "Compiling kernel... grab a coffee"

make -j$(nproc) bzImage > $ROOT/out/logs/kernel-build.log 2>&1

cp arch/x86/boot/bzImage $ROOT/out/kernel/bzImage
echo "OK -> out/kernel/bzImage $(du -h $ROOT/out/kernel/bzImage | cut -f1)"
