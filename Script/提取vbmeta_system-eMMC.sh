echo "执行此脚本需要root权限"

echo "设备闪存类型需为eMMC"

echo "虚拟机无法使用"

echo "适用于不支持动态系统更新的设备"

echo " "

set -e

vbmeta_device1=$(find /dev/block/platform/ -name 'by-name' -type d)

cd "$vbmeta_device1"

vbmeta_device2=$(readlink -f vbmeta)

echo "vbmeta镜像的实际位置在$vbmeta_device2"
