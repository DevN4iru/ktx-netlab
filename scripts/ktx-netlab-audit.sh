#!/usr/bin/env bash
set -u

STAMP="$(date +%Y%m%d-%H%M%S)"
OUT="logs/netlab-audits/ktx-netlab-audit-$STAMP.log"

{
echo "===== KTX NETLAB AUDIT ====="
date
echo

echo "===== HOST ====="
hostnamectl
echo

echo "===== OS ====="
cat /etc/os-release
echo "Kernel: $(uname -r)"
echo

echo "===== UPTIME / LOAD ====="
uptime
echo

echo "===== CPU ====="
lscpu | grep -E 'Model name|Architecture|CPU\(s\)|Thread|Core|Socket|Virtualization' || true
echo

echo "===== MEMORY ====="
free -h
echo

echo "===== DISK ====="
lsblk -o NAME,SIZE,TYPE,FSTYPE,LABEL,MOUNTPOINTS,MODEL
echo
df -hT
echo

echo "===== NETWORK INTERFACES ====="
ip -br link
echo
ip -br addr
echo

echo "===== ROUTES ====="
ip route
echo

echo "===== DNS ====="
cat /etc/resolv.conf
echo
dig archlinux.org
echo

echo "===== CONNECTIVITY ====="
echo "--- Gateway ---"
ping -c 4 192.168.254.254 || true
echo
echo "--- Public IP test ---"
ping -c 4 1.1.1.1 || true
echo
echo "--- Domain test ---"
ping -c 4 archlinux.org || true
echo

echo "===== SERVICES ====="
for svc in NetworkManager sshd docker caddy lightdm; do
  printf "%-20s" "$svc"
  systemctl is-active "$svc" 2>/dev/null || true
done
echo

echo "===== DOCKER ====="
docker --version 2>/dev/null || true
docker ps 2>/dev/null || true
echo

echo "===== TOOL VERSIONS ====="
for cmd in git nmap tcpdump dig traceroute python node pnpm caddy docker; do
  echo "--- $cmd ---"
  command -v "$cmd" || true
  "$cmd" --version 2>/dev/null | head -n 3 || true
done

echo
echo "===== AUDIT COMPLETE ====="
} | tee "$OUT"

echo
echo "Saved audit to: $OUT"
