#!/bin/bash -e

install -m 644 files/ipv6.conf "${ROOTFS_DIR}/etc/modprobe.d/ipv6.conf"
install -m 644 files/interfaces "${ROOTFS_DIR}/etc/network/interfaces"

echo $HOSTNAME > "${ROOTFS_DIR}/etc/hostname"
echo "127.0.1.1    ${HOSTNAME}" > "${ROOTFS_DIR}/etc/hosts"

ln -sf /dev/null "${ROOTFS_DIR}/etc/systemd/network/99-default.link"

on_chroot << EOF
systemctl enable networking
EOF
