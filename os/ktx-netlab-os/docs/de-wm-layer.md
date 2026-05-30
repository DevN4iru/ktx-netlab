# KTX NetLab OS DE/WM Layer

## Purpose

This layer turns the installed Arch-based system into a recognizable KTX NetLab OS desktop environment instead of a generic XFCE install.

## Stack

- Display Manager: LightDM
- Desktop Environment: XFCE
- Window Manager: xfwm4
- File Manager: Thunar
- Terminal: xfce4-terminal
- Theme: Adwaita-dark
- Icons: Papirus-Dark
- Browser: Firefox
- Network GUI: NetworkManager applet
- Privilege GUI: polkit-gnome

## Session

KTX NetLab OS provides its own LightDM session entry:

    /usr/share/xsessions/ktx-netlab.desktop

This launches:

    /usr/local/bin/ktx-session

which starts XFCE under the KTX NetLab OS identity.

## Desktop behavior

The profile keeps the desktop minimal and appliance-like:

- clean dark enterprise look
- KTX launchers on desktop
- no fake hacker visuals
- no automatic router mode
- no destructive network changes
- lab-first, support-first workflow

## Commands

    ktx desktop info
    ktx desktop apply

## Rule

The desktop layer is allowed to improve usability and identity. It must not silently change router/firewall behavior.
