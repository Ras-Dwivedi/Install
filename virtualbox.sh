#!/bin/bash
# sign-vbox script, copyright (c) 2017 by Rod Smith
# Distributed under the terms of the GPLv3

if [ "$#" -ne 1 ] && [ "$#" -ne 0 ]; then
    echo "Usage: $0 [ {kernel-version} ]"
    exit 1
fi

if [ "$#" == 0 ]; then
    kernel_version=$(uname -r)
else
    kernel_version="$1"
fi

sign_file=$(find /usr/src/ -name sign-file | tail -n 1)

if [ -z $sign_file ]; then
    echo "Can't find the sign-file binary! Exiting!"
    exit 1
else
    path_to_modules="/lib/modules/$kernel_version/updates/dkms"

    if [ ! -f $path_to_modules/vboxdrv.ko ]; then
        echo "Could not find $path_to_modules/vboxdrv.ko!"
        echo "Is the kernel version correct?"
        exit 1
    fi

    echo "Signing modules for $kernel_version"
    $sign_file sha256 /etc/refind.d/keys/refind_local.key /etc/refind.d/keys/refind_local.cer $path_to_modules/vboxdrv.ko
    $sign_file sha256 /etc/refind.d/keys/refind_local.key /etc/refind.d/keys/refind_local.cer $path_to_modules/vboxnetadp.ko
    $sign_file sha256 /etc/refind.d/keys/refind_local.key /etc/refind.d/keys/refind_local.cer $path_to_modules/vboxnetflt.ko
    $sign_file sha256 /etc/refind.d/keys/refind_local.key /etc/refind.d/keys/refind_local.cer $path_to_modules/vboxpci.ko
    modprobe vboxdrv
    modprobe vboxnetflt
    modprobe vboxpci
    modprobe vboxnetadp
    echo "Loaded vbox modules:"
    lsmod | grep vbox
fi
