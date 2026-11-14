#!/usr/bin/env bash
# shellcheck disable=SC2034
iso_name="vortexos"
iso_label="VORTEXOS_$(date +%Y%m)"
iso_publisher="VortexOS <https://vortexos.local>"
iso_application="VortexOS Gaming Linux"
iso_version="$(date +%Y.%m.%d)"
install_dir="vortexos"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi.systemd-boot.eltorito' 'uefi.systemd-boot.esp')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '15' '-b' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/usr/local/bin/vortex-setup"]="0:0:755"
  ["/usr/local/bin/vortex-first-boot"]="0:0:755"
  ["/etc/sudoers.d/vortex"]="0:0:440"
)
