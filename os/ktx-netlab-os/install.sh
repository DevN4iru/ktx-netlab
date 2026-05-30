#!/usr/bin/env bash
set -euo pipefail

STAMP="$(date +%Y%m%d-%H%M%S)"
BACKUP="/var/backups/ktx-netlab-os-$STAMP"

cd "$(dirname "$0")"

echo "===== KTX NETLAB OS LAYER INSTALL ====="
echo "Backup: $BACKUP"
echo

sudo install -d "$BACKUP"
sudo install -d /var/log/ktx-netlab

for f in /etc/issue /etc/motd /etc/profile.d/ktx-netlab.sh /etc/ktx-release; do
  if [ -e "$f" ]; then
    sudo cp -a "$f" "$BACKUP/"
  fi
done

echo "===== INSTALL ROOTFS OVERLAY ====="
sudo cp -a rootfs/. /

echo "===== FIX PERMISSIONS ====="
sudo chmod +x /usr/local/bin/ktx
sudo chmod +x /usr/local/bin/ktx-welcome
sudo chmod 0644 /etc/ktx-release
sudo chmod 0644 /etc/issue
sudo chmod 0644 /etc/profile.d/ktx-netlab.sh
sudo chmod 0644 /etc/systemd/system/ktx-netlab-bootcheck.service

echo "===== SYSTEMD ====="
sudo systemctl daemon-reload
sudo systemctl enable --now ktx-netlab-bootcheck.service || true

echo
echo "===== INSTALLED ====="
ktx release
echo
echo "Run:"
echo "  ktx status"
echo "  ktx tui"
