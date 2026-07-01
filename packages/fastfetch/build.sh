#!/bin/bash
set -e

# Path setup
SCRIPT_DIR=$(dirname "$(realpath "$0")")
ROOT_DIR=$(realpath "$SCRIPT_DIR/../..")
ROOTFS="$ROOT_DIR/rootfs"
BUILD_DIR="$SCRIPT_DIR/build_src"

VERSION="2.65.1"

echo "=== Configurazione Build di Fastfetch ==="

## 1. Download source ##
cd "$SCRIPT_DIR"
if [ ! -d "fastfetch-$VERSION" ]; then
    echo "Downloading fastfetch-$VERSION..."
    wget "https://github.com/fastfetch-cli/fastfetch/archive/refs/tags/${VERSION}.tar.gz" -O "fastfetch.tar.gz"
    tar -xf fastfetch.tar.gz
    rm fastfetch.tar.gz
fi

cd "fastfetch-$VERSION"

## 2. Make patches in patches/ ##
if [ -d "$SCRIPT_DIR/patches" ] && [ "$(ls -A "$SCRIPT_DIR/patches")" ]; then
    echo "Applying patches..."
    for patch in "$SCRIPT_DIR/patches"/*.patch; do
        patch -p1 < "$patch"
    done
fi

## 3. Configuring and Compiling with CMake ##
mkdir -p "$BUILD_DIR"
cd "$BUILD_DIR"

echo "Configuring CMake..."
### Note: Forcing fastfetch to not search external libraries that don't exist yet
cmake "$SCRIPT_DIR/fastfetch-$VERSION" \
    -DCMAKE_BUILD_TYPE=Release \
    -DENABLE_ALL=OFF \
    -DENABLE_LINUX=ON \
    -DENABLE_STATIC=ON \
    -DCMAKE_INSTALL_PREFIX=/usr

echo "Compiling..."
make -j$(nproc)

## 4. Installing in KoreOS's rootfs ##
echo "Installing in rootfs..."

make install DESTDIR="$ROOTFS"

echo "Finished."
