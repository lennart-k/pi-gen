#!/bin/bash -e

install -m 644 files/ipv6.conf "${ROOTFS_DIR}/etc/modprobe.d/ipv6.conf"
echo $HOSTNAME > "${ROOTFS_DIR}/etc/hostname"

ln -sf /dev/null "${ROOTFS_DIR}/etc/systemd/network/99-default.link"
