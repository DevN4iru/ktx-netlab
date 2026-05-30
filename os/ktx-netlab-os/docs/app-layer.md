# KTX NetLab OS App Layer

## Purpose

This layer defines the default user applications and appliance-style app behavior for KTX NetLab OS.

## Default applications

- Browser: Firefox
- Text editor: Mousepad
- File manager: Thunar
- Terminal: xfce4-terminal
- System info: fastfetch through ktx-fetch

## Menu entries

- About KTX NetLab OS
- KTX System Info
- KTX Mode Manager
- KTX Control
- KTX Logs
- KTX GitHub Repo
- Packet Tracer placeholder
- Wireshark
- Network Settings

## File manager bookmarks

The OS adds NetLab workspace bookmarks to Thunar:

- NetLab
- Audits
- Reports
- Captures
- Router-Lab
- Cisco-Labs
- Repository
- KTX-System-Logs

## Commands

    ktx apps info
    ktx apps apply
    ktx about
    ktx fetch
    ktx polish

## Rule

This layer improves operating system usability. It must not enable routing, firewall, NAT, or DHCP behavior.
