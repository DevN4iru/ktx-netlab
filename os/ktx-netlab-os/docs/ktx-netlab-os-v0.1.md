# KTX NetLab OS v0.1 — first-wire

## Definition

KTX NetLab OS is an Arch-based installed network lab operating environment. It uses Arch Linux as the base system and adds a custom KTX layer for network diagnostics, SSH operations, Docker networking, service monitoring, lab documentation, and future reproducible ISO builds.

## Current build type

This version is an installed OS layer, not yet a separate ISO.

## Base

- Base system: Arch Linux
- Kernel: Linux LTS
- Target hardware: Dell Inspiron N5040
- Hostname: ktx-netlab
- Main user: kirch

## KTX additions

- `/etc/ktx-release`
- `/usr/local/bin/ktx`
- `/usr/local/bin/ktx-welcome`
- `/etc/profile.d/ktx-netlab.sh`
- `/etc/systemd/system/ktx-netlab-bootcheck.service`
- Package manifest
- Git-tracked OS documentation

## Core command

    ktx help

## Purpose

KTX NetLab OS is designed for hands-on network operations, Linux administration, troubleshooting practice, Cisco-style learning, and infrastructure portfolio proof.

## Next version target

v0.2 should add reproducible Arch ISO/build profile using archiso.
