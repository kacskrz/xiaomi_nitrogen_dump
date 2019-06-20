#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:61322574:b989e0aa928b7bd9a9e9c132ceaf42065d42788b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:54269258:baa41883071a03e2833d8fd8e8171927ad63f710 EMMC:/dev/block/bootdevice/by-name/recovery b989e0aa928b7bd9a9e9c132ceaf42065d42788b 61322574 baa41883071a03e2833d8fd8e8171927ad63f710:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
