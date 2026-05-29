# KTX NetLab Build Log

## Project goal

Repurpose an old Dell i3 laptop with 6GB RAM into a lightweight Arch Linux network lab workstation for:

- Linux administration practice
- Cisco networking study
- SSH remote management
- LAN diagnostics
- Dashboard-based IT support tooling
- Portfolio proof for IT support / junior web support work

## Target setup

- Base OS: Arch Linux
- Desktop: XFCE
- Display manager: LightDM
- Hostname: ktx-netlab
- User: kirch
- Filesystem: ext4
- Remote access: OpenSSH
- Main use: network lab, Cisco study, diagnostics dashboard

## Checkpoints

- [x] GitHub repository created
- [x] Initial documentation pushed
- [x] Arch ISO downloaded
- [x] Arch ISO copied to Ventoy
- [x] Dell booted into Arch live ISO
- [x] Live SSH enabled
- [x] Hardware audit completed
- [x] Disk/boot mode confirmed
- [x] Arch base installed
- [x] First boot successful
- [x] Installed system SSH working
- [x] XFCE installed
- [ ] Network/dev tools installed
- [ ] Cisco Networking Basics started
- [ ] First lab note written
- [ ] Dashboard MVP started

## Hardware audit result

- Boot mode: Legacy BIOS
- Internal disk: /dev/sda, 465.8G, TOSHIBA MK5076GSX
- Current disk contents: existing NTFS partitions
- Ventoy USB: /dev/sdb, 30G Mass Storage
- Ethernet interface: enp19s0
- Live ISO IP: 192.168.254.160
- CPU: Intel Core i3 M 390 @ 2.67GHz
- RAM: 5.6Gi usable

## Install target

Target disk for Arch install:

`/dev/sda`

Warning: `/dev/sdb` is the Ventoy USB and must not be modified.

## Desktop checkpoint

- XFCE desktop installed
- LightDM login works
- Deskflow keyboard/mouse sharing works
- Debian workstation can control Arch NetLab over SSH
