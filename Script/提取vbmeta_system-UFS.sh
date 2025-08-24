echo "执行此脚本需要root权限"

echo "设备闪存类型需为UFS"

echo "虚拟机无法使用"

echo "适用于不支持动态系统更新的设备"

echo " "

set -e

cd /dev/block/by-name

vbmeta_system_device=$(readlink -f vbmeta_system)

echo "vbmeta_system镜像的实际位置在$vbmeta_system_device"

dd if="$vbmeta_system_device" of=/sdcard/Download/vbmeta_system.img
