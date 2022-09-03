#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS:5877760:95d7e3b927ca8d93593ee764b3acc0e934bfc41f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdhci-tegra.3/by-name/LNX:5310464:622171869fd06c6c51236184c4534501c092451f EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS 95d7e3b927ca8d93593ee764b3acc0e934bfc41f 5877760 622171869fd06c6c51236184c4534501c092451f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
