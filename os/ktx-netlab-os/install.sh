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

for f in \
  /etc/issue \
  /etc/motd \
  /etc/profile.d/ktx-netlab.sh \
  /etc/ktx-release \
  /etc/ktx-mode \
  /etc/lightdm/lightdm-gtk-greeter.conf.d/99-ktx-netlab.conf
do
  if [ -e "$f" ]; then
    sudo cp -a "$f" "$BACKUP/" 2>/dev/null || true
  fi
done

echo "===== INSTALL ROOTFS OVERLAY ====="
sudo cp -a rootfs/. /

echo "===== DEFAULT MODE ====="
if [ ! -f /etc/ktx-mode ]; then
  echo "lab" | sudo tee /etc/ktx-mode >/dev/null
fi

echo "===== FIX PERMISSIONS ====="
sudo chmod +x /usr/local/bin/ktx
sudo chmod +x /usr/local/bin/ktx-mode
sudo chmod +x /usr/local/bin/ktx-welcome
sudo chmod +x /usr/local/bin/ktx-control
sudo chmod +x /usr/local/bin/ktx-packettracer-placeholder

sudo chmod 0644 /etc/ktx-release
sudo chmod 0644 /etc/issue
sudo chmod 0644 /etc/profile.d/ktx-netlab.sh
sudo chmod 0644 /etc/systemd/system/ktx-netlab-bootcheck.service

sudo mkdir -p /home/kirch/Desktop
sudo chown -R kirch:kirch /home/kirch/Desktop
find /home/kirch/Desktop -name "*.desktop" -exec chmod +x {} \; 2>/dev/null || true

echo "===== SYSTEMD ====="
sudo systemctl daemon-reload
sudo systemctl enable --now ktx-netlab-bootcheck.service || true

echo
echo "===== INSTALLED ====="
ktx release
echo
echo "Try:"
echo "  ktx status"
echo "  ktx mode status"
echo "  ktx tui"
