Run the emulation with:

  qemu-system-ppc -nographic -vga none -M mac99 -cpu g4 -m 1G -kernel mac99/images/vmlinux -drive file=mac99/images/rootfs.ext2,format=raw -net nic,model=sungem -net user -append "root=/dev/sda"

Tested with QEMU 3.1.0
