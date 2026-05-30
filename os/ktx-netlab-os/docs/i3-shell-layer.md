# KTX NetLab OS i3 Shell Layer

## Purpose

KTX i3 Lab is the tiling shell layer for KTX NetLab OS.

It provides a Hyprland-like keyboard-first workflow while staying lighter, safer, and more compatible with the current X11/LightDM stack.

## Stack

- Window manager: i3
- Bar: i3status
- Launcher: rofi
- Wallpaper: feh
- Notifications: dunst
- Compositor: picom
- Terminal: xfce4-terminal
- File manager: Thunar
- Browser: Firefox

## Visual direction

Clean enterprise rogue:

- dark graphite base
- muted rouge/red accent
- cyan technical accent
- thin borders
- minimal panel
- no heavy blur
- no fake hacker visuals

## Sessions

KTX NetLab OS has two safe visual sessions:

- KTX NetLab OS: XFCE fallback session
- KTX i3 Lab: tiling shell session

## Main keybinds

- Super+Enter: Terminal
- Super+D: Launcher
- Super+Q: Close window
- Super+X: KTX Control
- Super+W: Wireshark
- Super+N: Network Settings
- Super+F: File Manager
- Super+B: Browser
- Super+1-9: Workspaces
- Super+H/J/K/L: Focus windows
- Super+Shift+H/J/K/L: Move windows

## Safety

This layer does not enable router mode, NAT, DHCP, firewall profiles, or packet forwarding.
Router mode remains locked until explicitly enabled.
