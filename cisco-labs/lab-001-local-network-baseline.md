# Lab 001 — Local Network Baseline

## Objective

Document the current network baseline of the KTX NetLab Arch node before starting Cisco Networking Basics.

## Machine

- Hostname: ktx-netlab
- Device: Dell Inspiron N5040
- OS: Arch Linux
- Role: SSH-managed network lab node

## What this lab checks

- Local IP address
- Default gateway
- DNS resolver
- Internet reachability
- Route path
- Visible devices inside the local LAN

## Commands used

    hostnamectl
    ip -br addr
    ip route
    cat /etc/resolv.conf
    dig archlinux.org
    ping -c 4 192.168.254.254
    ping -c 4 archlinux.org
    traceroute archlinux.org
    nmap -sn 192.168.254.0/24

## Safety scope

LAN scan is limited to the owned local network only:

    192.168.254.0/24

## Result

Raw command output is saved in:

    lab-001-output.txt
