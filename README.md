# Otter - Yet another operating system kernel

Otter is the project that I experiment operating system kernel.

## BootLoader

Connect loader with boot.

`
mkdir -p /mnt/iso
sudo mount -t vfat -o rw,loop ./boot.img /mnt/iso
sudo cp loader.bin /mnt/iso/
sudo sync
sudo umount boot.img
`