#!/bin/bash
set -e

echo "Упаковка в deb-пакет..."

# Название и версия
PKG_NAME="prime-check"
PKG_VERSION="1.0"
ARCH="amd64"
BUILD_DIR="deb-build"

# Очистка предыдущей сборки
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR/DEBIAN" "$BUILD_DIR/usr/local/bin"

# Создание исполняемого файла
cp prime-check "$BUILD_DIR/usr/local/bin/$PKG_NAME"
chmod 755 "$BUILD_DIR/usr/local/bin/$PKG_NAME"

# Создание control-файла
cat > "$BUILD_DIR/DEBIAN/control" <<EOF
Package: $PKG_NAME
Version: $PKG_VERSION
Architecture: $ARCH
Maintainer: Nessy <davanddan2428@gmail.com>
Description: Программа для проверки простых чисел.
EOF

# Создание deb-пакета
dpkg-deb --build "$BUILD_DIR" "${PKG_NAME}${PKG_VERSION}${ARCH}.deb"

echo "Готовый пакет: ${PKG_NAME}${PKG_VERSION}${ARCH}.deb"
