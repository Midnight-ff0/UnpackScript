echo "执行此脚本需要root权限"

echo "设备闪存类型需为eMMC"

echo "虚拟机无法使用"

echo "适用于不支持动态系统更新的设备"

echo " "

set -e

boot_device1=$(find /dev/block/platform/ -name 'by-name' -type d)

cd "$boot_device1"

boot_device2=$(readlink -f boot)

echo "boot镜像的实际位置在$boot_device2"

dd if="$boot_device2" of=/sdcard/Download/boot.img
