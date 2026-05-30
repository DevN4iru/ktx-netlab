# KTX NetLab OS Build Manifest v0.1.0

## Base

- Base OS: Arch Linux
- Kernel: Linux LTS
- Display manager: LightDM
- Desktop environment: XFCE
- Window manager: xfwm4
- File manager: Thunar
- Terminal: xfce4-terminal

## Identity

- OS name: KTX NetLab OS
- Version: 0.1.0
- Codename: first-wire
- Base: Arch Linux
- Target device: Dell Inspiron N5040

## Installed KTX layers

- OS identity layer
- GUI appliance launcher layer
- DE/WM layer
- Shell, terminal, folders, and panel layer
- App defaults and bindings layer
- System branding and doctor layer

## Main commands

    ktx status
    ktx net
    ktx mode status
    ktx desktop info
    ktx fetch
    ktx doctor
    ktx audit

## Safety

Router mode is not enabled in v0.1.0. Router mode remains dry-run only until USB Ethernet interface detection and recovery mode are fully implemented.
