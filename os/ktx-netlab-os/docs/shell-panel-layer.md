# KTX NetLab OS Shell, Terminal, and Panel Layer

## Purpose

This layer makes the installed system feel like a real operating system environment instead of a stock Arch XFCE install.

## Components

- KTX shell identity
- KTX terminal profile
- KTX XFCE panel layout
- KTX NetLab workspace folders
- KTX polish command

## Commands

    ktx shell apply
    ktx terminal apply
    ktx panel apply
    ktx folders apply
    ktx polish

## Panel layout

The panel is minimal and appliance-oriented:

- Whisker menu
- task list
- system tray
- clock
- action/logout menu

## Folder layout

The user workspace is placed under:

    ~/NetLab

with folders for:

- Audits
- Logs
- Reports
- Captures
- Router-Lab
- Cisco-Labs
- Scripts
- Repository
- System-Logs

## Rule

This layer only changes user interface and shell behavior. It does not enable router mode, NAT, firewall changes, or DHCP server behavior.
