# KTX NetLab OS v0.1 — first-wire

## Definition

KTX NetLab OS is an Arch-based installed network lab operating environment.

It uses Arch Linux as the base and adds a KTX layer for:

- portfolio proof
- network diagnostics
- IT support practice
- router lab preparation
- cybersecurity lab preparation
- SSH operations
- Docker networking
- service monitoring
- GUI appliance workflow

## Desktop direction

The GUI layer uses XFCE with minimal clean enterprise customization. The desktop should feel like a practical network appliance, not a generic Arch desktop.

## Core launchers

- KTX Control
- Terminal
- Wireshark
- Network Settings
- KTX Logs
- GitHub Repo
- Packet Tracer placeholder
- Browser

## Operating modes

Current modes:

- Lab Mode
- Sensor Mode
- Router Mode dry-run
- Recovery Mode dry-run

Router mode is intentionally locked until USB Ethernet interface detection is confirmed.

## Planned router architecture

WAN:

- built-in Ethernet interface: enp19s0
- DHCP from upstream router/repeater

LAN:

- USB Ethernet adapter
- static KTX router IP: 10.10.10.1/24
- DHCP range: 10.10.10.100 - 10.10.10.200
- dnsmasq for DHCP/DNS
- nftables for firewall/NAT

## Safety rule

Router mode must never be enabled blindly. Recovery mode must always exist before real router mode is activated.
