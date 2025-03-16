#!/bin/bash
set -e
echo "Создание deb-пакета..."
cp prime-check prime-check-deb/usr/local/bin/
chmod 755 prime-check-deb/usr/local/bin/prime-check

cat > prime-check-deb/DEBIAN/control <<EOF
Package: prime-check
Version: 1.0
Section: base
Priority: optional
Architecture: amd64
Depends: libc6
Maintainer: Nessy <davanddan2428@gmail.com>
Description: Программа для проверки числа на простоту.
EOF

dpkg-deb --build prime-check-deb
mv prime-check-deb.deb prime-check_1.0_amd64.deb
echo "DEB-пакет создан: prime-check_1.0_amd64.deb"
