#!/usr/bin/env bash
# build.sh — build VortexOS ISO from an Arch Linux system (or toolbox/distrobox)
set -e

if ! command -v mkarchiso >/dev/null 2>&1; then
    echo "Installing archiso..."
    sudo pacman -Sy --needed --noconfirm archiso
fi

# enable services that need symlinks (filesystems without symlink support)
PROFILE_DIR="$(cd "$(dirname "$0")" && pwd)/VortexOS"
mkdir -p "$PROFILE_DIR/airootfs/etc/systemd/system/multi-user.target.wants"
ln -sf /etc/systemd/system/vortex-first-boot.service \
       "$PROFILE_DIR/airootfs/etc/systemd/system/multi-user.target.wants/vortex-first-boot.service"

OUT="$(pwd)/out"
sudo mkarchiso -v -w /tmp/vortex-work -o "$OUT" "$PROFILE_DIR"

echo
echo "✅ Done! Your ISO is at: $OUT/"
ls -lh "$OUT"/*.iso
