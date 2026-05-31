# Realme C11 Headless ADB Setup

This documents the KTX NetLab setup for the Realme C11 / RMX2189 headless Android board.

## Purpose

The Realme C11 is used as a headless Android lab board for ADB, scrcpy mirroring, testing, and controlled Android workflows.

This setup assumes the phone already trusts the imported ADB key.

## Host

- Hostname: ktx-netlab
- OS: Arch Linux
- Desktop: LightDM + Xorg + i3
- SSH: enabled and active
- Current wired IP during setup: 192.168.0.192

## Verified tools

- adb
- scrcpy
- unzip
- lsusb
- ssh
- sshd

Verified versions during audit:

- Android Debug Bridge 1.0.41
- android-tools 35.0.2
- scrcpy 4.0

## Local ADB key

Local key files:

- ~/.android/adbkey
- ~/.android/adbkey.pub

Important:

- Never commit adbkey.
- Never commit adbkey.pub.
- Never commit realme-adbkey-export.zip.
- Never commit import cache, runtime logs, or state files.
- Keep the ADB private key local to the machine.

## Local runtime paths

Live paths used on KTX:

- ~/.android/
- ~/.local/bin/kirch-realmeC11
- ~/.local/bin/kirch-mcpe
- ~/Downloads/realme-adbkey-export.zip
- ~/Downloads/realme-adbkey-import/
- ~/Downloads/KIRCH-REALME-C11-LINUX/

Only the launcher scripts and this documentation should be tracked.

## Tracked launchers

Tracked rootfs overlay paths:

- os/ktx-netlab-os/rootfs/home/kirch/.local/bin/kirch-realmeC11
- os/ktx-netlab-os/rootfs/home/kirch/.local/bin/kirch-mcpe

These are installed into the live home directory by the KTX rootfs install process.

## Safety rules

Do not casually do any of these:

- factory reset
- reboot the phone without reason
- revoke USB debugging
- delete ~/.android/adbkey
- delete ~/.android/adbkey.pub
- change display size or density blindly
- clear launcher or system apps
- mount rejected or untrusted SD cards

The Realme has no LCD attached and has a broken power button, so recovery from a bad state is difficult.

## Audit command

Run:

    kirch-realmeC11 audit

Expected result when phone is not plugged in:

    Phone not connected or not authorized.

That is not a setup failure. It only means ADB cannot currently see the phone.

## Manual checks

Run:

    adb version
    scrcpy --version
    adb devices -l
    lsusb | grep -iE 'android|realme|oppo|mediatek|qualcomm|google|18d1|22d9|0e8d|05c6'

## Start rule

Before mirroring, always confirm connection first:

    adb devices -l
    kirch-realmeC11 audit

Only start mirroring after the phone appears as connected and authorized.

## Commit scope

Safe to commit:

- launcher scripts
- documentation
- ignore rules

Never commit:

- ADB private keys
- ADB public keys
- exported key zip files
- import caches
- runtime logs
- runtime state
- phone data
