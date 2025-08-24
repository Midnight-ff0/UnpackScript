echo "执行此脚本需要root权限"

echo "设备闪存类型需为UFS"

echo "虚拟机无法使用"

echo "适用于不支持动态系统更新的设备"

echo " "

set -e

cd /dev/block/by-name

boot_device=$(readlink -f boot)

echo "boot镜像的实际位置在$boot_device"

dd if="$boot_device" of=/sdcard/Download/boot.img

echo "提取完成，文件在/storage/emulated/0/Download/里"
