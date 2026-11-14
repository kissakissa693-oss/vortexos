# VortexOS 🎮

A custom Linux-based gaming OS built for **AMD Ryzen 9 5900X + RTX 4070 Ti (32 GB DDR4)**.
Windows-free, with Steam/Proton for maximum FPS, a built-in app store (Flathub + Discover), and Firefox/Chromium (never Edge).

## What's inside

| Feature | What you get |
|---|---|
| FPS | Proton-GE, GameMode, MangoHud, NVIDIA proprietary drivers, `mitigations=off`, PowerMizer max-performance |
| App store | Flatpak + KDE Discover (Flathub enabled on first boot) — Steam, Discord, Spotify, OBS and 4000+ apps |
| Browser | Firefox + uBlock Origin, Chromium |
| Desktop | KDE Plasma |
| Games | Steam + Heroic (Epic/GOG) + Lutris + Wine |
| Installer | One-click desktop icon → guided disk install (UEFI, btrfs with snapshots) |

## How to build the ISO (no Linux needed)

### Option A — GitHub Actions (easiest)
1. Create a free account on [github.com](https://github.com)
2. Create a new repository (e.g. `vortexos`) and upload this folder to it
3. Go to the **Actions** tab → **Build VortexOS ISO** → **Run workflow**
4. Wait ~15-30 minutes → download the **VortexOS-ISO** artifact

### Option B — On any Arch Linux system
1. Boot any Arch Linux ISO (or use `toolbox`/`distrobox` on another Linux).
2. Copy this folder there.
3. Run:
   ```bash
   chmod +x build.sh
   ./build.sh
   ```
4. Get `out/vortexos-*.iso` → flash it to a USB stick with `dd` or balenaEtcher:
   ```bash
   dd if=out/vortexos-*.iso of=/dev/sdX bs=4M status=progress
   ```

## How to install on your machine

1. Boot the USB → Plasma desktop loads automatically.
2. Double-click **"Install VortexOS"** on the desktop.
3. Pick your drive, set username/password → done. Reboot without the USB.

## After installing

- Open **Discover** for apps (Spotify, Discord, OBS, etc.)
- Steam is preinstalled — Proton-GE is the default compatibility tool
- Press `F3` in games via MangoHud config, or run games with `gamemoderun %command%` in Steam launch options
- NVIDIA settings: `nvidia-settings` → PowerMizer → prefer maximum performance

## Customizing

- Edit `VortexOS/packages.x86_64` to add/remove apps, then rebuild.
- Edit `VortexOS/airootfs/` — anything there lands in the live system (and becomes defaults).
